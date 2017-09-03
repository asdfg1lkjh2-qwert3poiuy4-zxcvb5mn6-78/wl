package com.wedlock.serviceImpl;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.AdminDetailsDao;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.service.AdminDetailsService;

@Transactional
@Service
public class AdminDetailsServiceImpl implements AdminDetailsService{

	@Autowired
	AdminDetailsDao adminDetailsDao;
	@PersistenceContext
	EntityManager manager;
	
	@Override
	public AdminResponseClass saveAdminDetails(AdminDetails adminDetails) {
		boolean status = false;
		
		adminDetails.setActive(Boolean.TRUE);
		adminDetailsDao.save(adminDetails);
		status = true;
	
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass countRowsAdminDetails() {
		boolean status = false;
		
		int countRows=(int)adminDetailsDao.count();
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCountRows(countRows);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass checkAdminLoginCredentials(String username, String password) {
		boolean status =false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		Query query = manager.createQuery("Select a from AdminDetails a WHERE (a.emailId =:username or a.phoneNumber =:username) AND a.password =:password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		if(!(query.getResultList().isEmpty())){
			adminResponseClass.setAdminDetail((AdminDetails)query.getResultList().get(0));
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAdminDetailsById(long id) {
		boolean status = false;
		AdminDetails adminDetails = adminDetailsDao.findOne(id);
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setAdminDetail(adminDetails);
		return adminResponseClass;
	}

}
