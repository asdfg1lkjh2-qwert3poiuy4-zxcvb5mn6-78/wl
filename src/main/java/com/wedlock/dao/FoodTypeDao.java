package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.FoodType;

public interface FoodTypeDao extends JpaRepository<FoodType, Long>{

}
