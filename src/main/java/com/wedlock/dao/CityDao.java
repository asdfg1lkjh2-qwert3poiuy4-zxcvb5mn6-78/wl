package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.City;

public interface CityDao extends JpaRepository<City, Long>{

}
