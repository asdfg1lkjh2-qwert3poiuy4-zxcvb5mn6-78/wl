package com.wedlock.serviceImpl;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.SellerDiscountDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDiscount;
import com.wedlock.service.SellerDiscountService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class SellerDiscountServiceImpl implements SellerDiscountService{

	@Autowired
	private SellerDiscountDao sellerDiscountDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveSellerDiscount(SellerDiscount sellerDiscount) {
		boolean status = false;
		sellerDiscount.setEntryTime(new Date());
		sellerDiscount.setStatus(Boolean.TRUE);
		sellerDiscountDao.save(sellerDiscount);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass checkSellerDiscounts(SellerDiscount sellerDiscount) {
		boolean status = false;
		TypedQuery<SellerDiscount> typedQuery = manager.createQuery("Select s from SellerDiscount s where s.toDateDiscount LIKE:toDateDiscount AND s.allProducts.id LIKE:id",SellerDiscount.class).setParameter("toDateDiscount", sellerDiscount.getToDateDiscount()).setParameter("id", sellerDiscount.getAllProductsId());
		status = true;
		if(!(typedQuery.getResultList().isEmpty())){
			status = false;
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);		
		return adminResponseClass;
	}

}
