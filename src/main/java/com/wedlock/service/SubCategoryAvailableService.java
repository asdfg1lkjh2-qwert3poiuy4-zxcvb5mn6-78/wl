package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SubCategoryAvailable;

public interface SubCategoryAvailableService {
	AdminResponseClass saveSubCategoryAvailable(SubCategoryAvailable subCategoryAvailable,String subCategoryValues[]);
}
