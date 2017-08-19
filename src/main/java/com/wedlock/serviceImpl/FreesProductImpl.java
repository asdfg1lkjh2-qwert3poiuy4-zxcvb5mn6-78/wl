package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FreesProductDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.GeneralProduct;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.FreesProductService;

@Transactional
@Service
public class FreesProductImpl implements FreesProductService {

	@Autowired
	private FreesProductDao freesProductDao;
	@PersistenceContext
	EntityManager manager;
	
	@Override
	public AdminResponseClass saveFreesProduct(FreesProduct freesProduct) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		freesProductDao.save(freesProduct);
		status = true;
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllProductBySellerId(SellerDetails sellerDetails) 
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		List<GeneralProduct> listGeneralProduct = new ArrayList<>();
		//Query query = manager.createQuery("Select ap from AllProducts ap where ap.status = true and ap.sellerDetails.id =:sellerId order by ap.entryTime");
		Query query = manager.createQuery("SELECT ca.allProducts.id, ca.tableName from CategoryAvailable ca WHERE ca.allProducts.sellerDetails =:sellerDetails");
		query.setParameter("sellerDetails", sellerDetails);
		List<CategoryAvailable> listCategoryAvailable = new ArrayList<>();
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<CategoryAvailable> listCategoryAvailable1 = query.getResultList();
			listCategoryAvailable = listCategoryAvailable1;
		}
		
		for (CategoryAvailable categoryAvailable : listCategoryAvailable)
		{
			GeneralProduct gp = new GeneralProduct();
			query = manager.createQuery("SELECT tb.id, tb.name from " + categoryAvailable.getTableName() + " tb WHERE tb.allProducts =:allProduct");
			query.setParameter("allProduct", categoryAvailable.getAllProducts().get(0));
			
			gp.setAllProductId(categoryAvailable.getAllProducts().get(0).getId());
			gp.setSpecificId((String)query.getResultList().get(0));
			
			listGeneralProduct.add(gp);
			status = true;
		}
		adminResponseClass.setListGeneralProduct(listGeneralProduct);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
