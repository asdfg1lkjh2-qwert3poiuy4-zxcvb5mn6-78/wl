package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.IntProductOccasion;

public interface ProductOccasionDao extends JpaRepository<IntProductOccasion, Long>{
}