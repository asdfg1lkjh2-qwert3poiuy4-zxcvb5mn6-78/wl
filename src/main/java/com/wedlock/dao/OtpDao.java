package com.wedlock.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wedlock.model.Otp;

public interface OtpDao extends JpaRepository<Otp, Long>{

}
