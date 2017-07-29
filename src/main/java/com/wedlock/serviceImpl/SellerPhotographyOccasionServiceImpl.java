package com.wedlock.serviceImpl;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerPhotographyOccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographyOccasion;
import com.wedlock.service.SellerPhotographyOccasionService;

@Transactional
@Service
public class SellerPhotographyOccasionServiceImpl implements SellerPhotographyOccasionService{

	@Autowired
	private SellerPhotographyOccasionDao sellerPhotographyOccasionDao;
	@Override
	public AdminResponseClass saveSellerPhotographyOccasion(SellerPhotographyOccasion sellerPhotographyOccasion) {
		boolean status = false;
		sellerPhotographyOccasion.setEntryTime(new Date());
		sellerPhotographyOccasion.setStatus(Boolean.TRUE);
		sellerPhotographyOccasionDao.save(sellerPhotographyOccasion);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
