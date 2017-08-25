package com.wedlock.serviceImpl;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wedlock.dao.CityDao;
import com.wedlock.dao.SellerBankDetailsDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.dao.StateDao;
import com.wedlock.dao.ZipCodeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.ApiResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.Otp;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerInactiveDetails;
import com.wedlock.model.State;
import com.wedlock.model.ZipCode;
import com.wedlock.service.OtpService;
import com.wedlock.service.SellerService;
import com.wedlock.util.OtpGenerator;
import com.wedlock.util.smsApi;


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
	@Autowired
	private OtpService otpService;
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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
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
	@Override
	public AdminResponseClass checkSelleroginCredentials(SellerDetails sellerDetails) throws ParseException, JsonParseException, JsonMappingException, IOException, NoSuchProviderException {
		boolean status = false;
		String mssg = "";
		
		TypedQuery<SellerDetails> typedQuery = manager.createQuery("Select s from SellerDetails s where s.sellerEmailId LIKE:sellerEmailId AND s.sellerPassword LIKE:sellerPassword ",SellerDetails.class).setParameter("sellerEmailId", sellerDetails.getSellerEmailId()).setParameter("sellerPassword", sellerDetails.getSellerPassword());
		status = true;
		if(typedQuery.getResultList().isEmpty()){
			mssg = "Email Id or Password is Incorrect";
			status = false;
		}else {
			System.out.println("////In else");
			SellerDetails sellerDetails2 = typedQuery.getSingleResult();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String checkDate = simpleDateFormat.format(date);
			date = simpleDateFormat.parse(checkDate);
			if(sellerDetails2.isActive()){
				System.out.println("///In if");
				if(date.after(sellerDetails2.getSellerRegistrationEnd())){
					System.out.println("////In first if");
					mssg = "Trial Period has Ended on"+ sellerDetails2.getSellerRegistrationEnd()+" .Please uprade your account to resume your interrupted services";
					status = true;
					SellerDetails sellerDetails3 = new SellerDetails();
					sellerDetails3 = typedQuery.getSingleResult();
					sellerDetails3.setTypeOfSeller("Not Free");
					sellerDao.save(sellerDetails3);
				}
				else if(!(sellerDetails2.isEmailVerified() || sellerDetails2.isMobileVerified())){
					System.out.println("In second if");
					mssg = "Please Verfiy Your Mobile For Login";
					
					Random ranGen = new SecureRandom();
					int random = OtpGenerator.otpGenerateNumber(ranGen.nextInt(2999));
					while(String.valueOf(random).length() < 4){
						random = OtpGenerator.otpGenerateNumber(ranGen.nextInt(2999));
					}
					Otp otp = new Otp();
					otp.setOtp(random);
					otp.setSellerDetails(sellerDetails2);
					AdminResponseClass responseClass = otpService.saveOtpForSeller(otp);
					if(responseClass.isStatus()){
						System.out.println("///Seller Contact Number is"+sellerDetails2.getSellerContactNumber());
						 /*String mssg2 = "Your 4 digits passcode for Wedlock is "+ random +" .Please donot share this with anyone";
						 URL url = new URL(smsApi.sendSms(mssg2, sellerDetails2.getSellerContactNumber()));
						 ObjectMapper objectMapper = new ObjectMapper();
						 objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
						 ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
						 System.out.println("////APIResponseClass"+apiResponseClass.getTotal_sms());*/
						 status = false;
					}
				}
			}
			if(!(sellerDetails2.isActive())){
					for(SellerInactiveDetails inactiveDetails :sellerDetails2.getSellerInactiveDetails()){
						if((inactiveDetails.isActive()) && (inactiveDetails.getSellerDetails().getId().equals(sellerDetails2.getId()))){
							mssg = "Your account has been locked by the administrator on "+inactiveDetails.getDateOfInactivity()+" due to "+inactiveDetails.getInactiveReason();
							status = false;
						}
				}
			}
			
		}
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setMssgStatus(mssg);
		if(status){
			System.out.println("////In if");
			adminResponseClass.setSellerDetail(typedQuery.getSingleResult());
			System.out.println("Seller Details is"+adminResponseClass.getSellerDetail().getSellerFirstName());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
}
