package com.wedlock.serviceImpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FreesProductDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FreesProduct;
import com.wedlock.service.FreesProductService;

@Transactional
@Service
public class FreesProductImpl implements FreesProductService {

	@Autowired
	private FreesProductDao freesProductDao;
	@PersistenceContext
	EntityManager manager;
	
	@Override
	public AdminResponseClass saveFreesProduct(FreesProduct freesProduct) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		freesProductDao.save(freesProduct);
		status = true;
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
