package com.wedlock.service;

import java.text.ParseException;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Flower;
import com.wedlock.model.SellerDetails;

public interface FlowerService {
	public AdminResponseClass findLastFlowerId();
	AdminResponseClass saveFlower(Flower flower);
	AdminResponseClass fetchAllFlowerProductsById(SellerDetails sellerDetails) throws ParseException;

}
