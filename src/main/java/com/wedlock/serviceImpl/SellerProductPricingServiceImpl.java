package com.wedlock.serviceImpl;


import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.SellerProductPricingDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.SellerProductPricingService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class SellerProductPricingServiceImpl implements SellerProductPricingService{

	@Autowired
	private SellerProductPricingDao sellerProductPricingDao;
	@PersistenceContext
	EntityManager manager;
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
	@Override
	public AdminResponseClass checkSellerPricings(SellerProductPricing sellerProductPricing) {
		boolean status = false;
		TypedQuery<SellerProductPricing> typedQuery = manager.createQuery("Select s from SellerProductPricing s where s.priceToDate LIKE:priceToDate AND s.allProducts.id LIKE:id",SellerProductPricing.class).setParameter("priceToDate", sellerProductPricing.getPriceToDate()).setParameter("id", sellerProductPricing.getAllProductsId());
		status = true;
		if(!(typedQuery.getResultList().isEmpty())){
			status = false;
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
