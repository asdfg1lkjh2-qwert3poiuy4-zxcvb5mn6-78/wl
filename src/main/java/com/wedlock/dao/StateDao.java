package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.State;

public interface StateDao extends JpaRepository<State, Long>{

}
