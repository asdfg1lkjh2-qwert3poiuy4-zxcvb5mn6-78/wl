package com.wedlock.serviceImpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.FoodOfPackageDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FoodOfPackage;
import com.wedlock.service.FoodOfPackageService;

@Transactional(propagation = Propagation.REQUIRED)
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

	@Override
	public long foodOfPackageByfoodIdAndAllProductId(long allProductId, long foodId) {
		Query query = manager.createQuery("Select f.id from FoodOfPackage f where f.food.id=:foodId and f.allProducts.id=:allProductId");
		query.setParameter("foodId", foodId);
		query.setParameter("allProductId", allProductId);
		if(!(query.getResultList().isEmpty()))
		{
			return (long)query.getResultList().get(0);
		}
		else
			return 0;
	}
	
}
