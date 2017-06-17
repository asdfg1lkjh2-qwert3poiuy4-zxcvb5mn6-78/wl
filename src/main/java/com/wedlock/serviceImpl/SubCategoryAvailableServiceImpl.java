package com.wedlock.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		if(subCategoryValues.length > 1){
			for(int i = 0; i<subCategoryValues.length;i++){
				SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();
				subCategoryAvailable2.setCategoryAvailable(categoryAvailable);
				subCategoryAvailable2.setActive(Boolean.TRUE);
				
				String values[] = subCategoryValues[i].split(",");
				subCategoryAvailable2.setSubCategoryName(values[0]);
				subCategoryAvailable2.setSubCategoryDescription(values[1]);
				
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

}
