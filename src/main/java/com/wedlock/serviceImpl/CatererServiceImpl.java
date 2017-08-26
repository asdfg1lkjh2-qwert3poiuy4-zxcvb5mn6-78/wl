package com.wedlock.serviceImpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.AllProductsDao;
import com.wedlock.dao.CatererDao;
import com.wedlock.dao.OccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Caterer;
import com.wedlock.service.CatererService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class CatererServiceImpl implements CatererService{

	@Autowired
	private CatererDao catererDao;
	
	@PersistenceContext
	EntityManager manager;
	@Autowired
	private OccasionDao occasionDao;
	@Autowired
	private AllProductsDao allProductsDao;
	@Override
	public AdminResponseClass findLastCatererId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)catererDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select f from Caterer f ORDER BY f.id desc");
			query.setMaxResults(1);
			Caterer caterer = (Caterer)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(caterer.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass saveCaterer(Caterer caterer) {
		boolean status = false;
		caterer.setStatus(Boolean.TRUE);
		catererDao.save(caterer);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
}

