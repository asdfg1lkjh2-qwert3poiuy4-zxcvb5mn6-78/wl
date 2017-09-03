package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;

public interface CategoryTakenService 
{
	AdminResponseClass saveCategoryTaken(SellerDetails sellerDetails, String categoryTakenData , long categoryTakenId);
}
