package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.Flower;

public interface FlowerDao extends JpaRepository<Flower, String>{

}
