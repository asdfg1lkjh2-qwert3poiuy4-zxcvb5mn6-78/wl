package com.wedlock.serviceImpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FoodOfPackageDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FoodOfPackage;
import com.wedlock.service.FoodOfPackageService;

@Transactional
@Service
public class FoodOfPackageServiceImpl implements FoodOfPackageService
{

	@Autowired
	private FoodOfPackageDao foodOfPackageDao;
	@PersistenceContext
	EntityManager manager;

	@Override
	public AdminResponseClass saveFoodOfPackage(FoodOfPackage foodOfPackage) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		foodOfPackageDao.save(foodOfPackage);
		adminResponseClass.setStatus(true);
		return adminResponseClass;
	}
	
}
