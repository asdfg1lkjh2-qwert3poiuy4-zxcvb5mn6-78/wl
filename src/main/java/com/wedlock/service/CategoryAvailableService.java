package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;

public interface CategoryAvailableService {
	AdminResponseClass saveCategoryAvailable(CategoryAvailable categoryAvailable);
	AdminResponseClass fetchAllCategoryAvailble();
	AdminResponseClass fetchCategoryAvailableById(long id);
}
