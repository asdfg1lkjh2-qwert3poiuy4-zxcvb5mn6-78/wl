package com.wedlock.serviceImpl;



import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerProductPricingDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.SellerProductPricingService;

@Transactional
@Service
public class SellerProductPricingServiceImpl implements SellerProductPricingService{

	@Autowired
	private SellerProductPricingDao sellerProductPricingDao;
	@Override
	public AdminResponseClass saveSellerProductPricing(SellerProductPricing sellerProductPricing) {
		boolean status = false;
		sellerProductPricing.setEntryTime(new Date());
		sellerProductPricing.setStatus(Boolean.TRUE);
		sellerProductPricingDao.save(sellerProductPricing);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
