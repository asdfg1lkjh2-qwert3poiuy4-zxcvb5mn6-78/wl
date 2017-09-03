package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FoodOfPackage;

public interface FoodOfPackageService {
	AdminResponseClass saveFoodOfPackage(FoodOfPackage foodOfPackage);
	long foodOfPackageByfoodIdAndAllProductId(long allProductId, long foodId);
}
