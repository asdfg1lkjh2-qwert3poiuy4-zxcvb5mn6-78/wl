package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographyOccasion;

public interface SellerPhotographyOccasionService {
AdminResponseClass saveSellerPhotographyOccasion(SellerPhotographyOccasion sellerPhotographyOccasion,int isEdit);
AdminResponseClass deleteSellerPhotographyOccasionByAllProductsAndOccasionId(long allProductId, long occasionId);
}
