package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.SellerDetails;

public interface SellerDao extends JpaRepository<SellerDetails, String>{

}
