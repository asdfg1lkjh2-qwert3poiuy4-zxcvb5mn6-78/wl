package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
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
		
		List<CategoryAvailable> listCategoryAvailable = categoryAvailableDao.findAll();
		status = true;
		
		List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCategoryAvailable(categoryAvailable);
		
		
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
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}
		
		return list;
	}

}
