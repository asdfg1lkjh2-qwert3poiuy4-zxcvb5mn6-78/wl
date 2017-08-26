package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.TestModel;

public interface TestModelDao extends JpaRepository<TestModel, String>{

}
