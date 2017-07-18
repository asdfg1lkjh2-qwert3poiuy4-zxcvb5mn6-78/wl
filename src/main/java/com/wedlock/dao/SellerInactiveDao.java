package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.SellerInactiveDetails;

public interface SellerInactiveDao extends JpaRepository<SellerInactiveDetails, Long>{

}
