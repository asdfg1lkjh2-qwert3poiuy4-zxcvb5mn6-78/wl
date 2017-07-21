package com.wedlock.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CityDao;
import com.wedlock.dao.SellerBankDetailsDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.dao.StateDao;
import com.wedlock.dao.ZipCodeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerInactiveDetails;
import com.wedlock.model.State;
import com.wedlock.model.ZipCode;
import com.wedlock.service.SellerService;


@Transactional
@Service
public class SellerServiceImpl implements SellerService{

	@Autowired
	private SellerDao sellerDao;
	@Autowired
	private StateDao stateDao;
	@Autowired
	private CityDao cityDao;
	@Autowired
	private ZipCodeDao zipCodeDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass addEditSellerDetails(SellerDetails sellerDetails,String isEdit) throws ParseException {
		boolean status = false;
		
		State state = stateDao.findOne(sellerDetails.getStateId());
		City city = cityDao.findOne(sellerDetails.getCityId());
		ZipCode zipCode = zipCodeDao.findOne(sellerDetails.getZipCodeId());
		
		
		if(isEdit.equals("Yes")){
			SellerDetails details = sellerDao.findOne(sellerDetails.getId());
			status = true;
			sellerDetails.setSellerRegistrationStart(details.getSellerRegistrationStart());
			sellerDetails.setSellerRegistrationEnd(details.getSellerRegistrationEnd());
		}else{
			sellerDetails.setSellerRegistrationStart(new Date());
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, 3);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String date =simpleDateFormat.format(cal.getTime());
			sellerDetails.setSellerRegistrationEnd(simpleDateFormat.parse(date));
		}
		
		
		sellerDetails.setEntryTime(new Date());
		sellerDetails.setTypeOfSeller("Free");
		sellerDetails.setActive(Boolean.TRUE);
		sellerDetails.setState(state);
		sellerDetails.setCity(city);
		sellerDetails.setZipCode(zipCode);
		sellerDao.save(sellerDetails);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass findLastSellerId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)sellerDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select s from SellerDetails s ORDER BY s.id desc");
			query.setMaxResults(1);
			SellerDetails sellerDetails = (SellerDetails)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(sellerDetails.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllSellers() {
		boolean status = false;
		List<SellerDetails> listSellerDetails = sellerDao.findAll(new Sort(Sort.Direction.ASC, "sellerFirstName"));
		status = true;
		
	/*		List<SellerDetails> list = new ArrayList<>();
			for(SellerDetails sellerDetails:listSellerDetails){
				State state = stateDao.findOne(sellerDetails.getState().getId());
				City city = cityDao.findOne(sellerDetails.getCity().getId());
				ZipCode zipCode = zipCodeDao.findOne(sellerDetails.getZipCode().getId());
				SellerDetails sellerDetails2 = new SellerDetails();
				sellerDetails2.setId(sellerDetails.getId());
				sellerDetails2.setSellerFirstName(sellerDetails.getSellerFirstName());
				sellerDetails2.setSellerLastName(sellerDetails.getSellerLastName());
				sellerDetails2.setSellerEmailId(sellerDetails.getSellerEmailId());
				sellerDetails2.setSellerPassword(sellerDetails.getSellerPassword());
				sellerDetails2.setSellerContactNumber(sellerDetails.getSellerContactNumber());
				sellerDetails2.setSellerPresentAddress(sellerDetails.getSellerPresentAddress());
				sellerDetails2.setEntryTime(sellerDetails.getEntryTime());
				sellerDetails2.setSellerRegistrationEnd(sellerDetails.getSellerRegistrationEnd());
				sellerDetails2.setStateName(state.getStateName());
				sellerDetails2.setCityName(city.getCityName());
				sellerDetails2.setZipCodeName(zipCode.getZipCode());
				sellerDetails2.setSellerImg(sellerDetails.getSellerImg());
				sellerDetails2.setTypeOfSeller(sellerDetails.getTypeOfSeller());
				sellerDetails2.setActive(sellerDetails.isActive());
				
				
				list.add(sellerDetails2);
			}*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSellerDetails(listSellerDetails);
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllSellersById(String id) {
		boolean status = false;
		SellerDetails sellerDetails = sellerDao.findOne(id);
		status = true;
		
		SellerDetails sellerDetails2 = new SellerDetails();
		State state = stateDao.findOne(sellerDetails.getState().getId());
		City city = cityDao.findOne(sellerDetails.getCity().getId());
		ZipCode zipCode = zipCodeDao.findOne(sellerDetails.getZipCode().getId());
		TypedQuery<SellerBankDetails> sellerBankDetailss = manager.createQuery("Select s from SellerBankDetails s where s.sellerDetails.id LIKE:id", SellerBankDetails.class).setParameter("id", sellerDetails.getId().trim());
		SellerBankDetails sellerBankDetails;
		if(!(sellerBankDetailss.getResultList().isEmpty())){
			sellerBankDetails = (SellerBankDetails)sellerBankDetailss.getSingleResult();
		}else{
			sellerBankDetails = null;
		}
		SellerInactiveDetails sellerInactiveDetails;
		if(!(sellerDetails.isActive())){
			TypedQuery<SellerInactiveDetails> sellerInactiveDetailss = manager.createQuery("Select s from SellerInactiveDetails s where s.sellerDetails.id LIKE:id AND s.isActive=:isActive", SellerInactiveDetails.class).setParameter("id", sellerDetails.getId().trim()).setParameter("isActive", Boolean.TRUE);
			sellerInactiveDetails = (SellerInactiveDetails)sellerInactiveDetailss.getSingleResult();
			
		}else{
			sellerInactiveDetails = null;
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		/*sellerDetails2.setId(sellerDetails.getId());
		sellerDetails2.setSellerFirstName(sellerDetails.getSellerFirstName());
		sellerDetails2.setSellerLastName(sellerDetails.getSellerLastName());
		sellerDetails2.setSellerContactNumber(sellerDetails.getSellerContactNumber());
		sellerDetails2.setSellerAlternateNumber(sellerDetails.getSellerAlternateNumber());
		sellerDetails2.setSellerEmailId(sellerDetails.getSellerEmailId());
		sellerDetails2.setSellerPassword(sellerDetails.getSellerPassword());
		sellerDetails2.setSellerPresentAddress(sellerDetails.getSellerPresentAddress());
		sellerDetails2.setSellerPermanentAddress(sellerDetails.getSellerPermanentAddress());
		sellerDetails2.setStateId(state.getId());
		sellerDetails2.setStateName(state.getStateName());
		sellerDetails2.setCityId(city.getId());
		sellerDetails2.setCityName(city.getCityName());
		sellerDetails2.setZipCodeId(zipCode.getId());
		sellerDetails2.setZipCodeName(zipCode.getZipCode());
		sellerDetails2.setZipCodeLocality(zipCode.getLocalityName());
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		sellerDetails2.setSellerDOB(simpleDateFormat.format(sellerDetails.getSellerDateOfBirth()));
		sellerDetails2.setSellerGender(sellerDetails.getSellerGender());
		sellerDetails2.setSellerCompanyName(sellerDetails.getSellerCompanyName());
		sellerDetails2.setSellerAddressProof(sellerDetails.getSellerAddressProof());
		sellerDetails2.setSellerIdProof(sellerDetails.getSellerIdProof());
		sellerDetails2.setSellerAddressProofImg(sellerDetails.getSellerAddressProofImg());
		sellerDetails2.setSellerIdProofImg(sellerDetails.getSellerIdProofImg());
		sellerDetails2.setSellerImg(sellerDetails.getSellerImg());
		sellerDetails2.setActive(sellerDetails.isActive());*/
		if(sellerBankDetails !=null){
			/*SellerBankDetails sellerBankDetails2 = new SellerBankDetails();
			sellerBankDetails2.setId(sellerBankDetails.getId());
			sellerBankDetails2.setAccountHolderName(sellerBankDetails.getAccountHolderName());
			sellerBankDetails2.setAccountNumber(sellerBankDetails.getAccountNumber());
			sellerBankDetails2.setIfscCode(sellerBankDetails.getIfscCode());
			sellerBankDetails2.setBranchName(sellerBankDetails.getBranchName());
			sellerBankDetails2.setBranchCode(sellerBankDetails.getBranchCode());*/
			adminResponseClass.setSellerBankDetail(sellerBankDetails);
		}
		if(sellerInactiveDetails != null){
			/*SellerInactiveDetails sellerInactiveDetails2 = new SellerInactiveDetails();
			sellerInactiveDetails2.setId(sellerInactiveDetails.getId());
			sellerInactiveDetails2.setInactiveReason(sellerInactiveDetails.getInactiveReason());
			sellerInactiveDetails2.setDateOfInactivity(sellerInactiveDetails.getDateOfInactivity());*/
			adminResponseClass.setSellerInactiveDetail(sellerInactiveDetails);
		}
		
		
		adminResponseClass.setSellerDetail(sellerDetails);
		adminResponseClass.setStatus(status);
		
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass findSellerByEmailAndContactNo(String email, String contactNo,String sellerId) {
		boolean status = false;
		if(sellerId.equals("")){
			TypedQuery<SellerDetails> sellerDetails = manager.createQuery("Select s from SellerDetails s where s.sellerEmailId LIKE:sellerEmailId OR s.sellerContactNumber LIKE:sellerContactNumber", SellerDetails.class).setParameter("sellerEmailId", email).setParameter("sellerContactNumber", contactNo);
			if(sellerDetails.getResultList().isEmpty()){
				status = true;
			}
		}
		else{
			TypedQuery<SellerDetails> sellerDetails = manager.createQuery("Select s from SellerDetails s where (s.sellerEmailId LIKE:sellerEmailId OR s.sellerContactNumber LIKE:sellerContactNumber) AND s.id NOT LIKE:sellerId", SellerDetails.class).setParameter("sellerEmailId", email).setParameter("sellerContactNumber", contactNo).setParameter("sellerId", sellerId);
			if(sellerDetails.getResultList().isEmpty()){
				status = true;
			}
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public SellerDetails fetchSellerByEmailId(String emailId) {
		TypedQuery<SellerDetails> sellerDetails = manager.createQuery("Select s from SellerDetails s where s.sellerEmailId LIKE:sellerEmailId ", SellerDetails.class).setParameter("sellerEmailId", emailId);
		SellerDetails sellerDetail;
		if(sellerDetails.getResultList().isEmpty()){
			sellerDetail = null;
		}else{
			sellerDetail = sellerDetails.getSingleResult();
		}
		return sellerDetail;
	}
	
}
