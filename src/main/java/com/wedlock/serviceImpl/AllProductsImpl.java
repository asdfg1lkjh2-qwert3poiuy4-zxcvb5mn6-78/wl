package com.wedlock.serviceImpl;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.AllProductsDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.service.AllProductsService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class AllProductsImpl implements AllProductsService{

	@Autowired
	private AllProductsDao allProductsDao;
	@PersistenceContext
	EntityManager manager;
	
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
	public AdminResponseClass fetchAllProductByIdAndSeller(long id, String sellerId) 
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		//AllProducts allProducts = allProductsDao.findOne(id);
		Query query = manager.createQuery("Select ap from AllProducts ap where ap.id =:allProductId and ap.sellerDetails.id =:sellerId order by ap.id");
		query.setParameter("allProductId", id);
		query.setParameter("sellerId", sellerId);
		
		if(!(query.getResultList().isEmpty()))
		{
			AllProducts allProducts = (AllProducts)query.getResultList().get(0);
			adminResponseClass.setAllProducts(allProducts);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	/*@Override
	public AdminResponseClass fetchAllProductBySellerIdWithStatus(String sellerId) 
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		Query query = manager.createQuery("Select ap from AllProducts ap where ap.status = true and ap.sellerDetails.id =:sellerId order by ap.entryTime");
		query.setParameter("sellerId", sellerId);
		
		if(!(query.getResultList().isEmpty()))
		{
			AllProducts allProducts = (AllProducts)query.getResultList().get(0);
			adminResponseClass.setAllProducts(allProducts);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchAllProductBySellerIdAndCatName(String sellerId, String catName)
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select ap from AllProducts ap where ap.sellerDetails.id =:sellerId and ap.categoryAvailable.categoryName =:catName and ap.categoryAvailable.isActive =true order by ap.entryTime");
		query.setParameter("sellerId", sellerId);
		query.setParameter("catName", catName);
		
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<AllProducts> allProducts = query.getResultList();
			adminResponseClass.setListAllProducts(allProducts);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}*/
	
}
