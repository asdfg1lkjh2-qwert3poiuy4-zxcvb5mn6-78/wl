package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.ProductType;

public interface ProductTypeDao extends JpaRepository<ProductType, Long>{

}
