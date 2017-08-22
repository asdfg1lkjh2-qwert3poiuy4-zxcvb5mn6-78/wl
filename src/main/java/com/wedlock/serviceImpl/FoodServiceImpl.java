package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		List<Food> modFoodList = new ArrayList<>();
		
		Query query = manager.createQuery("Select f from Food f where f.sellerDetails=:sellerDetails AND f.foodType.status=true order by f.name");
		query.setParameter("sellerDetails", sellerDetails);
		if(!query.getResultList().isEmpty())
		{
			List<Food> foodList = query.getResultList();
			for(Food food : foodList)
			{
				food.setSellerDetails(null);
				modFoodList.add(food);
			}
			status = true;
		}
		
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListFood(modFoodList);
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
		List<Food> modFoodList = new ArrayList<>();
		
		Query query = manager.createQuery("Select f from Food f where f.sellerDetails=:sellerDetails AND f.foodType.id=:typeId AND f.foodType.status=true AND f.status=true order by f.name");
		query.setParameter("sellerDetails", sellerDetails);
		query.setParameter("typeId", typeId);
		if(!query.getResultList().isEmpty())
		{
			List<Food> foodList = query.getResultList();
			for(Food food : foodList)
			{
				food.setSellerDetails(null);
				modFoodList.add(food);
			}
			status = true;
		}
		
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListFood(modFoodList);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
}
