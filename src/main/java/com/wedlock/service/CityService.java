package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;

public interface CityService {
	public AdminResponseClass saveCity(City city, String cityValues[]);
	public AdminResponseClass fetchAllCities();
	public AdminResponseClass fetchCityById(long id);
	public AdminResponseClass fetchCityByStateId(long id);
}
