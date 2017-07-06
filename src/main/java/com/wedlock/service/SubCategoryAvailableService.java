package com.wedlock.service;

import java.util.List;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SubCategoryAvailable;

public interface SubCategoryAvailableService {
	public AdminResponseClass saveSubCategoryAvailable(SubCategoryAvailable subCategoryAvailable,String subCategoryValues[]);
	public AdminResponseClass fetchAllSubCategoryAvailable();
	public AdminResponseClass fetchAllSubCategoryAvailableById(long id);
	public List<SubCategoryAvailable> listFetchAllSubCategoryAvailable();
	
}
