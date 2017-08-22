package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Food;
import com.wedlock.model.SellerDetails;

public interface FoodService {
	AdminResponseClass saveFood(Food food);
	AdminResponseClass fetchAllFoodBySeller(SellerDetails sellerDetails);
	AdminResponseClass fetchFoodById(long id);
	AdminResponseClass fetchFoodByIdWithStatus(long id);
	AdminResponseClass fetchFoodByTypeIdWithStatus(SellerDetails sellerDetails, long typeId);
}
