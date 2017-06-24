package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

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
	@Override
	public AdminResponseClass fetchAllSubCategoryAvailable() {
		
		boolean status = false;
		List<SubCategoryAvailable> listSubCategoryAvailable = subCategoryAvailableDao.findAll();
		status = true;
		
		List<SubCategoryAvailable> subCategoryAvailables = new ArrayList<>();
		for (SubCategoryAvailable subCategoryAvailable : listSubCategoryAvailable) {

			SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();

			subCategoryAvailable2.setId(subCategoryAvailable.getId());

			subCategoryAvailable2.setSubCategoryName(subCategoryAvailable.getSubCategoryName());

			subCategoryAvailable2.setSubCategoryDescription(subCategoryAvailable.getSubCategoryDescription());

			subCategoryAvailable2.setCategoryId(subCategoryAvailable.getCategoryAvailable().getId());

			subCategoryAvailables.add(subCategoryAvailable2);
			
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSubCategoryAvailables(subCategoryAvailables);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public List<SubCategoryAvailable> listFetchAllSubCategoryAvailable() {
		List<SubCategoryAvailable> listSubCategoryAvailable = subCategoryAvailableDao.findAll();
		
		List<SubCategoryAvailable> subCategoryAvailables = new ArrayList<>();
		for (SubCategoryAvailable subCategoryAvailable : listSubCategoryAvailable) {

			SubCategoryAvailable subCategoryAvailable2 = new SubCategoryAvailable();

			subCategoryAvailable2.setId(subCategoryAvailable.getId());

			subCategoryAvailable2.setSubCategoryName(subCategoryAvailable.getSubCategoryName());

			subCategoryAvailable2.setSubCategoryDescription(subCategoryAvailable.getSubCategoryDescription());

			subCategoryAvailable2.setCategoryId(subCategoryAvailable.getCategoryAvailable().getId());

			subCategoryAvailables.add(subCategoryAvailable2);

		}
		return subCategoryAvailables;
	}

}
