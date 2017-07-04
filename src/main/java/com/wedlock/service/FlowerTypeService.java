package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FlowerType;

public interface FlowerTypeService {
	
	public AdminResponseClass saveFlowerType(FlowerType flowerType);

	public AdminResponseClass fetchAllFlowerType();

	public AdminResponseClass fetchFlowerTypeById(int id);
	
}
