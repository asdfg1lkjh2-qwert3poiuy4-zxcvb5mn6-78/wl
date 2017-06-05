package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;

public interface CityService {
	public AdminResponseClass saveCity(City city);
	public AdminResponseClass fetchAllCities();
	public AdminResponseClass fetchCityById(long id);
}
