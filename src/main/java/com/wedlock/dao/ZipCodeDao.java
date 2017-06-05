package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.ZipCode;

public interface ZipCodeDao extends JpaRepository<ZipCode, Long>{

}
