package com.wedlock.service;

import java.text.ParseException;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographer;

public interface SellerPhotographerService {
	AdminResponseClass findLastSellerPhotographerId(); 
	AdminResponseClass saveSellerPhotographer(SellerPhotographer sellerPhotographer);
	AdminResponseClass fetchAllPhotographyProducts() throws ParseException;
	AdminResponseClass fetchSellerPhotographerById(String photographerId);
}
