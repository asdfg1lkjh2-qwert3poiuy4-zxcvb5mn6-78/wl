package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.PhotographyType;

public interface PhotographyTypeService {
	AdminResponseClass savePhotographyType(PhotographyType photographyType, String [] photographyValues);
	AdminResponseClass fetchAllPhotographyTypes();
	AdminResponseClass fetchPhotographyTypeById(long id);
}
