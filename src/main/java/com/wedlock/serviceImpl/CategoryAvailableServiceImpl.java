package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CategoryAvailableDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.service.CategoryAvailableService;

@Transactional
@Service
public class CategoryAvailableServiceImpl implements CategoryAvailableService{

	@Autowired
	private CategoryAvailableDao categoryAvailableDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveCategoryAvailable(CategoryAvailable categoryAvailable) {
		boolean status = false;
		
		categoryAvailable.setActive(Boolean.TRUE);
		categoryAvailableDao.save(categoryAvailable);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllCategoryAvailble() {
		boolean status = false;
		
		Query query = manager.createQuery("Select c from CategoryAvailable c where c.categoryUrl IS NULL and c.isActive =:isActive");
		query.setParameter("isActive", Boolean.TRUE);
		@SuppressWarnings("unchecked")
		List<CategoryAvailable> listCategoryAvailable = query.getResultList();
		status = true;
		
		List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
	    
		adminResponseClass.setCategoryAvailables(list);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchCategoryAvailableById(long id) {
		boolean status = false;
		
		CategoryAvailable categoryAvailable=categoryAvailableDao.findOne(id);
		status = true;
		
		CategoryAvailable categoryAvailable2 = new CategoryAvailable();
		categoryAvailable2.setId(categoryAvailable.getId());
		categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
		categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
		categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
		categoryAvailable2.setPackageFor(categoryAvailable.getPackageFor());
		categoryAvailable2.setRegistrationCharge(categoryAvailable.getRegistrationCharge());
		categoryAvailable2.setActive(categoryAvailable.isActive());
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCategoryAvailable(categoryAvailable2);
		
		
		return adminResponseClass;
	}
	@Override
	public List<CategoryAvailable> listFetchAllCategoryAvailble() {
	
		List<CategoryAvailable> listCategoryAvailable = categoryAvailableDao.findAll();

		List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}
		
		return list;
	}
	@Override
	public AdminResponseClass fetchAllCategoryAvailbleForDataTable() {
		boolean status = false;
		
		List<CategoryAvailable> listCategoryAvailable = categoryAvailableDao.findAll(new Sort(Sort.Direction.ASC, "categoryName"));
		status = true;
		
		List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			
			categoryAvailable2.setPackageFor(categoryAvailable.getPackageFor());
			categoryAvailable2.setRegistrationCharge(categoryAvailable.getRegistrationCharge());
			categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
			
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
	    
		adminResponseClass.setCategoryAvailables(list);
		
		return adminResponseClass;
	}

}
