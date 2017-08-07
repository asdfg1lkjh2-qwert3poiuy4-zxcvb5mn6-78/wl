package com.wedlock.serviceImpl;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.AllProductsDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.service.AllProductsService;

@Transactional
@Service
public class AllProductsImpl implements AllProductsService{

	@Autowired
	private AllProductsDao allProductsDao;
	@Override
	public AdminResponseClass saveAllProducts(AllProducts products) {
		boolean status = false;
		products.setEntryTime(new Date());
		products.setStatus(Boolean.TRUE);
		allProductsDao.save(products);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllProductById(long id) {
		boolean status = false;
		AllProducts allProducts = allProductsDao.findOne(id);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setAllProducts(allProducts);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
