package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;

public interface OccasionService {
	AdminResponseClass addEditOccasion(Occasion occasion);
	AdminResponseClass fetchAllOccasions();
	AdminResponseClass fetchOccasionsById(long id);
	AdminResponseClass fetchAllOccasionsWithStatus();
	AdminResponseClass deleteOccasionByAllProductsAndOccasionId(long allProductId, long occasionId);
	AdminResponseClass saveIntProductOcc(IntProductOccasion intProductOcc, int isEdit);
}
