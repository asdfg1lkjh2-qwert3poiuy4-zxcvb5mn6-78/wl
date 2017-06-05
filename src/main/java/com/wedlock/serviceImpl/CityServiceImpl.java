package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CityDao;
import com.wedlock.dao.StateDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.State;
import com.wedlock.service.CityService;

@Transactional
@Service
public class CityServiceImpl implements CityService {

	@Autowired
	private CityDao cityDao;
	@Autowired
	private StateDao stateDao;

	@Override
	public AdminResponseClass saveCity(City city) {
		boolean status = false;

		State state = stateDao.findOne(city.getStateId());
		city.setState(state);
		cityDao.save(city);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllCities() {
		boolean status = false;

		List<City> cityList = cityDao.findAll();
		status = true;

		List<City> cities = new ArrayList<>();
		for (City city : cityList) {

			City city2 = new City();
			//city2.setState(city.getState());
			city2.setId(city.getId());
			city2.setCityName(city.getCityName());
			city2.setStateId(city.getState().getId());

			cities.add(city2);
		}

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllCities(cities);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchCityById(long id) {
		boolean status = true;

		City city = cityDao.findOne(id);

		City city2 = new City();
		city2.setId(city.getId());
		city2.setCityName(city.getCityName());
		city2.setStateId(city.getState().getId());

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCity(city2);

		return adminResponseClass;
	}

}
