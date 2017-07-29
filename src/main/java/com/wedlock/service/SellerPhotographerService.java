package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographer;

public interface SellerPhotographerService {
	AdminResponseClass findLastSellerPhotographerId(); 
	AdminResponseClass saveSellerPhotographer(SellerPhotographer sellerPhotographer);
	AdminResponseClass fetchAllPhotographyProducts();
	AdminResponseClass fetchSellerPhotographerById(String photographerId);
}
