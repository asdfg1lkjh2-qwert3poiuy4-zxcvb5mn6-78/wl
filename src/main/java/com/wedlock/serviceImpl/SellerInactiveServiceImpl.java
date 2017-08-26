package com.wedlock.serviceImpl;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.AdminDetailsDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.dao.SellerInactiveDao;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerInactiveDetails;
import com.wedlock.service.SellerInactiveService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class SellerInactiveServiceImpl implements SellerInactiveService{

	@Autowired
	private SellerInactiveDao sellerInactiveDao;
	@Autowired
	private SellerDao sellerDao;
	@Autowired
	private AdminDetailsDao adminDetailsDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveSellerInactive(SellerInactiveDetails sellerInactiveDetails, String isActive) {
		boolean status = false;
		
		SellerDetails sellerDetails = sellerDao.findOne(sellerInactiveDetails.getSellerId());
		TypedQuery<SellerInactiveDetails> listSellerInactiveDetails = manager.createQuery("Select s from SellerInactiveDetails s where s.sellerDetails.id LIKE:id AND s.isActive=:isActive", SellerInactiveDetails.class).setParameter("id", sellerDetails.getId()).setParameter("isActive", Boolean.TRUE);
		if(!(listSellerInactiveDetails.getResultList().isEmpty())){
			SellerInactiveDetails inactiveDetails = listSellerInactiveDetails.getSingleResult();
			inactiveDetails.setActive(Boolean.FALSE);
			
			sellerInactiveDao.save(inactiveDetails);
			status = true;
		}
		
		if(isActive.equals("Inactive")){
			AdminDetails adminDetails =  adminDetailsDao.findOne(sellerInactiveDetails.getAdminDetails().getId());
			sellerInactiveDetails.setAdminDetails(adminDetails);		
			sellerInactiveDetails.setSellerDetails(sellerDetails);
			sellerInactiveDetails.setDateOfInactivity(new Date());
			sellerInactiveDetails.setActive(Boolean.TRUE);
			sellerInactiveDao.save(sellerInactiveDetails);
			sellerDetails.setActive(Boolean.FALSE);
			sellerDao.save(sellerDetails);
			status = true;
		}else{
			sellerDetails.setActive(Boolean.TRUE);
			sellerDao.save(sellerDetails);
			status = true;
		}
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}
	
}
