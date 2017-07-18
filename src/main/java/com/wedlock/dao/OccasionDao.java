package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.Occasion;

public interface OccasionDao extends JpaRepository<Occasion, Long>{
}