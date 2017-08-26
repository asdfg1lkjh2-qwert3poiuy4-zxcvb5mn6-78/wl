package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@PersistenceContext
	EntityManager manager;

	@Override
	public AdminResponseClass saveCity(City city, String cityValues[]) {
		boolean status = false;

		State state = stateDao.findOne(city.getStateId());
		city.setState(state);
		cityDao.save(city);
		status = true;
		
		if(cityValues.length > 0){
			for(int i = 0; i<cityValues.length;i++){
				City city2 = new City();
				city2.setState(state);
				
				if(cityValues[i].indexOf(",")>=0){
					String values[] = cityValues[i].split(",");
					city2.setCityName(values[0]);
					city2.setCityDescription(values[1]);
				}else{
					city2.setCityName(cityValues[i]);
				}
				cityDao.save(city2);
				if(cityDao.save(city2)==null){
					status = false;
					break;
				}
			}
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllCities() {
		boolean status = false;

		List<City> cityList = cityDao.findAll(new Sort(Sort.Direction.ASC, "state.stateName"));
		status = true;

		/*List<City> cities = new ArrayList<>();
		for (City city : cityList) {
			
			City city2 = new City();
			city2.setId(city.getId());
			city2.setCityName(city.getCityName());
			city2.setCityDescription(city.getCityDescription());
			city2.setState(city.getState());
			cities.add(city2);
		}*/

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllCities(cityList);
		for(City city: adminResponseClass.getListAllCities() ){
			System.out.println("/////City is"+city.getId());
			System.out.println("////City Name is"+city.getCityName());
			System.out.println("////State id is"+city.getState().getId());
		}

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchCityById(long id) {
		boolean status = false;

		
		City city = cityDao.findOne(id);
		status = true;
		
		City city2 = new City();
		State state = stateDao.findOne(city.getState().getId());
		
		city2.setId(city.getId());
		city2.setCityName(city.getCityName());
		city2.setCityDescription(city.getCityDescription());
		city2.setStateId(state.getId());
		city2.setStateName(state.getStateName());

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCity(city2);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchCityByStateId(long id) {
		boolean status = false;
		
		Query query = manager.createQuery("Select c from City c where c.state.id=:id");
		query.setParameter("id", id);
		@SuppressWarnings("unchecked")
		List<City> listCity = query.getResultList();
		status = true;
		
		List<City> cities = new ArrayList<>();
		for (City city : listCity) {
			City city2 = new City();
			city2.setStateId(city.getState().getId());
			city2.setId(city.getId());
			city2.setCityName(city.getCityName());

			cities.add(city2);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListAllCities(cities);
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}

}
