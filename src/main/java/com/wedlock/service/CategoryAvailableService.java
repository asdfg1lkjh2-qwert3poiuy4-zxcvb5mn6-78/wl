package com.wedlock.service;

import java.util.List;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;

public interface CategoryAvailableService {
	AdminResponseClass saveCategoryAvailable(CategoryAvailable categoryAvailable);
	AdminResponseClass fetchAllCategoryAvailble();
	AdminResponseClass fetchCategoryByCategoryName(String categoryName);
	AdminResponseClass fetchCategoryAvailableById(long id);
	List<CategoryAvailable> listFetchAllCategoryAvailble(boolean isSeller);
	AdminResponseClass fetchAllCategoryAvailbleForDataTable();
	AdminResponseClass fetchCategoryByCategoryNameWithStatus(String categoryName);
}
