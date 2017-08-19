package com.wedlock.serviceImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FoodTypeDao;
import com.wedlock.model.AdminResponseClass;
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
		// TODO Auto-generated method stub
		return null;
	}
	
}
