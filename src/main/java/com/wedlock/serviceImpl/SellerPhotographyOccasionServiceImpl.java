package com.wedlock.serviceImpl;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.SellerPhotographyOccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerPhotographyOccasion;
import com.wedlock.service.SellerPhotographyOccasionService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class SellerPhotographyOccasionServiceImpl implements SellerPhotographyOccasionService{

	@Autowired
	private SellerPhotographyOccasionDao sellerPhotographyOccasionDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveSellerPhotographyOccasion(SellerPhotographyOccasion sellerPhotographyOccasion, int isEdit) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(isEdit == 1){
			TypedQuery<SellerPhotographyOccasion> typedQuery= manager.createQuery("Select s from SellerPhotographyOccasion s where s.allProducts.id LIKE:allProductId AND s.photographyOccasion.id LIKE:occasionId",SellerPhotographyOccasion.class).setParameter("allProductId", sellerPhotographyOccasion.getAllProducts().getId()).setParameter("occasionId", sellerPhotographyOccasion.getPhotographyOccasion().getId());
			if(typedQuery.getResultList().isEmpty()){
				isEdit = 0;
			}
		}
		
		if(isEdit == 0){
			sellerPhotographyOccasion.setEntryTime(new Date());
			sellerPhotographyOccasion.setStatus(Boolean.TRUE);
			sellerPhotographyOccasionDao.save(sellerPhotographyOccasion);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass deleteSellerPhotographyOccasionByAllProductsAndOccasionId(long allProductId,long occasionId) {
		boolean status = false;
		Query query = manager.createQuery("Delete from SellerPhotographyOccasion s where s.allProducts.id =:allProductId AND s.photographyOccasion.id !=:occasionId").setParameter("allProductId", allProductId).setParameter("occasionId", occasionId);
		int deletedCount = query.executeUpdate();
		System.out.println("///Deleted Count is"+deletedCount);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(deletedCount == 1){
			adminResponseClass.setStatus(status);
		}else{
			System.out.println("///In else reh");
			adminResponseClass.setStatus(Boolean.FALSE);
		}
		return adminResponseClass;
	}

}
