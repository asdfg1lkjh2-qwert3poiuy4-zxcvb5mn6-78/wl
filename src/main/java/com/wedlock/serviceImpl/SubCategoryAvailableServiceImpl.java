package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.CategoryAvailableDao;
import com.wedlock.dao.SubCategoryAvailableDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.SubCategoryAvailable;
import com.wedlock.service.SubCategoryAvailableService;

@Transactional
@Service
public class SubCategoryAvailableServiceImpl implements SubCategoryAvailableService{

	@Autowired 
	CategoryAvailableDao categoryAvailableDao;
	@Autowired
	SubCategoryAvailableDao subCategoryAvailableDao;
	@Override
	public AdminResponseClass saveSubCategoryAvailable(SubCategoryAvailable subCategoryAvailable,String subCategoryValues[]) {
		boolean status = false;
		
		CategoryAvailable categoryAvailable = categoryAvailableDao.findOne(subCategoryAvailable.getCategoryId());
		
		subCategoryAvailable.setCategoryAvailable(categoryAvailable);
		subCategoryAvailable.setActive(Boolean.TRUE);
		
		subCategoryAvailableDao.save(subCategoryAvailable);
		status = true;
		if(subCategoryValues.length > 0){
			for(int i = 0; i<subCategoryValues.length;i++){
				SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();
				subCategoryAvailable2.setCategoryAvailable(categoryAvailable);
				subCategoryAvailable2.setActive(Boolean.TRUE);
				
				String values[] = subCategoryValues[i].split(",");
				subCategoryAvailable2.setSubCategoryName(values[0]);
				subCategoryAvailable2.setSubCategoryDescription(values[1]);
				subCategoryAvailable2.setSubCategoryUrl(values[2]);
				
				subCategoryAvailableDao.save(subCategoryAvailable2);
				if(subCategoryAvailableDao.save(subCategoryAvailable2)==null){
					status = false;
					break;
				}
			}
		}
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllSubCategoryAvailable() {
		
		boolean status = false;
		List<SubCategoryAvailable> listSubCategoryAvailable = subCategoryAvailableDao.findAll(new Sort(Sort.Direction.ASC, "categoryAvailable.categoryName"));
		status = true;
		
		/*List<SubCategoryAvailable> subCategoryAvailables = new ArrayList<>();
		for (SubCategoryAvailable subCategoryAvailable : listSubCategoryAvailable) {

			CategoryAvailable categoryAvailable = categoryAvailableDao.findOne(subCategoryAvailable.getCategoryAvailable().getId());
			SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();
			
			subCategoryAvailable2.setId(subCategoryAvailable.getId());
			subCategoryAvailable2.setSubCategoryUrl(subCategoryAvailable.getSubCategoryUrl());
			subCategoryAvailable2.setSubCategoryName(subCategoryAvailable.getSubCategoryName());
			subCategoryAvailable2.setSubCategoryDescription(subCategoryAvailable.getSubCategoryDescription());
			subCategoryAvailable2.setCategoryId(categoryAvailable.getId());
			subCategoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			subCategoryAvailable2.setActive(subCategoryAvailable.isActive());
			subCategoryAvailables.add(subCategoryAvailable2);
			
		}*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSubCategoryAvailables(listSubCategoryAvailable);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public List<SubCategoryAvailable> listFetchAllSubCategoryAvailable() {
		List<SubCategoryAvailable> listSubCategoryAvailable = subCategoryAvailableDao.findAll();
		
		/*List<SubCategoryAvailable> subCategoryAvailables = new ArrayList<>();
		for (SubCategoryAvailable subCategoryAvailable : listSubCategoryAvailable) {

			SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();

			subCategoryAvailable2.setId(subCategoryAvailable.getId());
			
			subCategoryAvailable2.setSubCategoryUrl(subCategoryAvailable.getSubCategoryUrl());

			subCategoryAvailable2.setSubCategoryName(subCategoryAvailable.getSubCategoryName());

			subCategoryAvailable2.setSubCategoryDescription(subCategoryAvailable.getSubCategoryDescription());

			subCategoryAvailable2.setCategoryId(subCategoryAvailable.getCategoryAvailable().getId());

			subCategoryAvailables.add(subCategoryAvailable2);*/
/*
		}*/
		return listSubCategoryAvailable;
	}
	@Override
	public AdminResponseClass fetchAllSubCategoryAvailableById(long id) {
		boolean status = false;
		
		SubCategoryAvailable subCategoryAvailable = subCategoryAvailableDao.findOne(id);
		status = true;
		
		/*SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();
		CategoryAvailable categoryAvailable = categoryAvailableDao.findOne(subCategoryAvailable.getCategoryAvailable().getId());*/
		
		/*subCategoryAvailable2.setId(subCategoryAvailable.getId());
		subCategoryAvailable2.setSubCategoryUrl(subCategoryAvailable.getSubCategoryUrl());
		subCategoryAvailable2.setSubCategoryName(subCategoryAvailable.getSubCategoryName());
		subCategoryAvailable2.setSubCategoryDescription(subCategoryAvailable.getSubCategoryDescription());
		subCategoryAvailable2.setCategoryId(categoryAvailable.getId());
		subCategoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
		subCategoryAvailable2.setActive(subCategoryAvailable.isActive());
		*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSubCategoryAvailable(subCategoryAvailable);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
