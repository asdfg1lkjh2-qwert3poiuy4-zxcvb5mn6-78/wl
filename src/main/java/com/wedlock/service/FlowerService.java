package com.wedlock.service;

import java.text.ParseException;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Flower;
import com.wedlock.model.SellerDetails;

public interface FlowerService {
	AdminResponseClass findLastFlowerId();
	AdminResponseClass saveFlower(Flower flower);
    AdminResponseClass fetchAllFlowerProductsById(SellerDetails sellerDetails) throws ParseException;

	AdminResponseClass fetchAllFlowerById(String sellerId, String allProductId, String flowerId);
}
