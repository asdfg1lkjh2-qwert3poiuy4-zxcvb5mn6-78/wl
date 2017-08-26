package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.CategoryAvailableDao;
import com.wedlock.dao.FreesProductDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.CategoryTaken;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.GeneralProduct;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.FreesProductService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class FreesProductImpl implements FreesProductService {

	@Autowired
	private FreesProductDao freesProductDao;
	@Autowired
	private CategoryAvailableDao categoryAvailableDao;
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
	public AdminResponseClass fetchAllProductBySellerId(SellerDetails details) 
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		List<GeneralProduct> generalProducts = new ArrayList<>();
		TypedQuery<AllProducts> typedQuery = manager.createQuery("Select a from AllProducts a WHERE a.sellerDetails.id = :id AND a.status = :status ORDER BY a.categoryAvailable.id",AllProducts.class).setParameter("id", details.getId()).setParameter("status", Boolean.TRUE);
		if(!typedQuery.getResultList().isEmpty()){
			List<AllProducts> allProducts = typedQuery.getResultList();
			for(AllProducts allProducts2 : allProducts){
				Query query = manager.createQuery("Select tb.id, tb.name from "+allProducts2.getCategoryAvailable().getTableName()+" tb WHERE tb.allProducts.id= :allProductsId").setParameter("allProductsId", allProducts2.getId());
				status = true;
				if(!query.getResultList().isEmpty());
				@SuppressWarnings("unchecked")
				List<Object[]> list = query.getResultList();
				for(Object[] obj : list){
					GeneralProduct generalProduct = new GeneralProduct();
					generalProduct.setSpecificId(obj[0].toString());
					generalProduct.setName(obj[1].toString());
					generalProduct.setAllProductId(allProducts2.getId());
					generalProducts.add(generalProduct);
					
				}
			}
		}
		adminResponseClass.setListGeneralProduct(generalProducts);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
