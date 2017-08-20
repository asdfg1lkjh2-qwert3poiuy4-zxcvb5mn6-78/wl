package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.wedlock.model.Food;

public interface FoodDao extends JpaRepository<Food, Long> {

}
