package com.wedlock.serviceImpl;

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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCategoryAvailables(listCategoryAvailable);
		
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

}
