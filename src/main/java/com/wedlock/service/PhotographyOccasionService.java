package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.PhotographyOccasion;

public interface PhotographyOccasionService {
	AdminResponseClass savePhotographyOccasion(PhotographyOccasion photographyOccasion, String [] photographyOccasionValues);
	AdminResponseClass fetchAllPhotographyOccasions();
	AdminResponseClass fetchPhotographyOccasionById(long id);
}
