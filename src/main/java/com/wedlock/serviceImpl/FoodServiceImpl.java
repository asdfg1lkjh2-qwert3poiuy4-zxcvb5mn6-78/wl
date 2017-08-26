package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.FoodDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Food;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.FoodService;

@Transactional
@Service
public class FoodServiceImpl implements FoodService
{

	@Autowired
	private FoodDao foodDao;
	@PersistenceContext
	EntityManager manager;
	
	@Override
	public AdminResponseClass saveFood(Food food)
	{
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		foodDao.save(food);
		adminResponseClass.setStatus(true);
		return adminResponseClass;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public AdminResponseClass fetchAllFoodBySeller(SellerDetails sellerDetails) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		Query query = manager.createQuery("Select f from Food f where f.sellerDetails.id=:sellerDetails AND f.foodType.status=true order by f.foodType.name asc");
		query.setParameter("sellerDetails", sellerDetails.getId());
		if(!query.getResultList().isEmpty())
		{
			adminResponseClass.setListFood(query.getResultList());
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchFoodById(long id) {
		boolean status = false;
		
		Food food = foodDao.findOne(id);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setFood(food);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchFoodByIdWithStatus(long id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select f from Food f where f.id=:id AND f.foodType.status=true AND f.status=true");
		query.setParameter("id", id);
		
		if(!(query.getResultList().isEmpty()))
		{
			Food food = (Food) query.getResultList().get(0);
			status = true;
			adminResponseClass.setFood(food);
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdminResponseClass fetchFoodByTypeIdWithStatus(SellerDetails sellerDetails, long typeId) {
		boolean status = false;
		
		Query query = manager.createQuery("Select f from Food f where f.sellerDetails.id=:sellerDetails AND f.foodType.id=:typeId AND f.foodType.status=true AND f.status=true order by f.foodType.name asc");
		query.setParameter("sellerDetails", sellerDetails.getId());
		query.setParameter("typeId", typeId);
		status = true;
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(!(query.getResultList()).isEmpty()){
			adminResponseClass.setListFood(query.getResultList());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
}
