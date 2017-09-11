package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.Halls;

public interface HallsDao extends JpaRepository<Halls, String>{

}
