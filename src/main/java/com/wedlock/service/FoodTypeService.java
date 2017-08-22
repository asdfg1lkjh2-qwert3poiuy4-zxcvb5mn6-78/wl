package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FoodType;

public interface FoodTypeService {
	AdminResponseClass saveFoodType(FoodType foodType);
	AdminResponseClass fetchAllFoodTypes();
	AdminResponseClass fetchAllFoodTypesWithStatus();
	AdminResponseClass fetchFoodTypeById(long id);
	AdminResponseClass fetchFoodTypeByIdWithStatus(long id);
}
