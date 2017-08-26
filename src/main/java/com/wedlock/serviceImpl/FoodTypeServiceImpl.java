package com.wedlock.serviceImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.FoodTypeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Food;
import com.wedlock.model.FoodType;
import com.wedlock.service.FoodTypeService;

@Transactional
@Service
public class FoodTypeServiceImpl implements FoodTypeService{

	@Autowired
	private FoodTypeDao foodTypeDao;
	@PersistenceContext
	EntityManager manager;
	
	@Override
	public AdminResponseClass saveFoodType(FoodType foodType) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		foodTypeDao.save(foodType);
		adminResponseClass.setStatus(true);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchAllFoodTypes() {
		boolean status = false;
		List<FoodType> foodTypeList = foodTypeDao.findAll(new Sort(Sort.Direction.ASC, "name"));
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListFoodType(foodTypeList);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchFoodTypeById(long id) {
		boolean status = false;
		
		FoodType foodType = foodTypeDao.findOne(id);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setFoodType(foodType);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchFoodTypeByIdWithStatus(long id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select ft from FoodType ft where ft.id=:id AND ft.status=true");
		query.setParameter("id", id);
		
		if(!(query.getResultList().isEmpty()))
		{
			FoodType foodType = (FoodType) query.getResultList().get(0);
			status = true;
			adminResponseClass.setFoodType(foodType);
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdminResponseClass fetchAllFoodTypesWithStatus() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select ft from FoodType ft where ft.status=true order by ft.name");
		
		if(!(query.getResultList().isEmpty()))
		{
			List<FoodType> foodTypeList = query.getResultList();
			status = true;
			adminResponseClass.setListFoodType(foodTypeList);
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
}
