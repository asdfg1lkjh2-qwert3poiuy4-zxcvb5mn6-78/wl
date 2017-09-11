package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Halls;

public interface HallsService {
	AdminResponseClass findLastHallId();
	AdminResponseClass saveHall(Halls hall);
	AdminResponseClass fetchAllHallsBySellerId(String sellerId);
	AdminResponseClass fetchHallByHallId(String hallId, String sellerId);
}
