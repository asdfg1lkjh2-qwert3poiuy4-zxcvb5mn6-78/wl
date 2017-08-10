package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Flower;

public interface FlowerService {
	public AdminResponseClass findLastFlowerId();
	AdminResponseClass saveFlower(Flower flower);

}
