package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerPhotographerDao;
import com.wedlock.dao.SellerProductPricingDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographer;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.SellerPhotographerService;

@Transactional
@Service
public class SellerPhotographerServiceImpl implements SellerPhotographerService{

	@Autowired
	private SellerPhotographerDao sellerPhotographerDao;
	@Autowired
	private SellerProductPricingDao sellerProductPricingDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass findLastSellerPhotographerId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)sellerPhotographerDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select s from SellerPhotographer s ORDER BY s.id desc");
			query.setMaxResults(1);
			SellerPhotographer sellerPhotographer = (SellerPhotographer)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(sellerPhotographer.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass saveSellerPhotographer(SellerPhotographer sellerPhotographer) {
		boolean status = false;
		sellerPhotographer.setEntryTime(new Date());
		sellerPhotographer.setActive(Boolean.TRUE);
		sellerPhotographerDao.save(sellerPhotographer);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchSellerPhotographerById(String photographerId) {
		boolean status = false;
		SellerPhotographer sellerPhotographer = sellerPhotographerDao.findOne(photographerId);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSellerPhotographer(sellerPhotographer);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllPhotographyProducts() {
		boolean status = false;
		List<SellerPhotographer> listSellerPhotographers = sellerPhotographerDao.findAll();
		status = true;
		List<SellerProductPricing> productPricings = new ArrayList<>();
		for(SellerPhotographer sellerPhotographer : listSellerPhotographers){
			SellerProductPricing sellerProductPricing = sellerProductPricingDao.findOne(sellerPhotographer.getAllProducts().getId());
			productPricings.add(sellerProductPricing);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListSellerPhotographers(listSellerPhotographers);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
