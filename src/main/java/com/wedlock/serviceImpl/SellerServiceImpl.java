package com.wedlock.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CityDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.dao.StateDao;
import com.wedlock.dao.ZipCodeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.SellerDetails;
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
	public AdminResponseClass addEditSellerDetails(SellerDetails sellerDetails) {
		boolean status = false;
		
		State state = stateDao.findOne(sellerDetails.getStateId());
		City city = cityDao.findOne(sellerDetails.getCityId());
		ZipCode zipCode = zipCodeDao.findOne(sellerDetails.getZipCodeId());
		
		sellerDetails.setEntryTime(new Date());
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
		
		List<SellerDetails> list = new ArrayList<>();
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
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			sellerDetails2.setSellerRegisterDate(dateFormat.format(sellerDetails.getEntryTime()));
			sellerDetails2.setStateName(state.getStateName());
			sellerDetails2.setCityName(city.getCityName());
			sellerDetails2.setZipCodeName(zipCode.getZipCode());
			sellerDetails2.setSellerImg(sellerDetails.getSellerImg());
			sellerDetails2.setActive(sellerDetails.isActive());
			
			
			list.add(sellerDetails2);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSellerDetails(list);
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}

}
