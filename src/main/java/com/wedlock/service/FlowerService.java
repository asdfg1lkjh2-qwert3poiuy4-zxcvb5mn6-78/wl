package com.wedlock.service;

import java.text.ParseException;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Flower;

public interface FlowerService {
	AdminResponseClass findLastFlowerId();
	AdminResponseClass saveFlower(Flower flower);
	AdminResponseClass fetchAllFlowerBySellerId(String sellerId) throws ParseException;
}
