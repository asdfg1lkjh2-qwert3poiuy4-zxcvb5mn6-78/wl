package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.PhotographyTypeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.PhotographyType;
import com.wedlock.service.PhotographyTypeService;

@Transactional
@Service
public class PhotographyTypeServiceImpl implements PhotographyTypeService{

	@Autowired
	private PhotographyTypeDao photographyTypeDao;
	@Override
	public AdminResponseClass savePhotographyType(PhotographyType photographyType, String [] photographyValues) {
		boolean status = false;
		if(photographyType.getEditPhotographyTypeId() == 0){
			photographyType.setStatus(Boolean.TRUE);
		}
		photographyTypeDao.save(photographyType);
		status = true;
		
		if(photographyValues.length > 0){
			for(int i = 0; i<photographyValues.length;i++){
				PhotographyType photographyType2 = new PhotographyType();
				
				String values[] = photographyValues[i].split(",");
				photographyType2.setTypeName(values[0]);
				if(values.length > 1){
					photographyType2.setTypeDescription(values[1]);
				}
			    photographyType2.setStatus(Boolean.TRUE);
				photographyTypeDao.save(photographyType2);
				if(photographyTypeDao.save(photographyType2)==null){
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
	public AdminResponseClass fetchAllPhotographyTypes() {
		boolean status = false;
		
		List<PhotographyType> photographyTypesList = photographyTypeDao.findAll(new Sort(Sort.Direction.ASC, "typeName"));
		status = true;

		List<PhotographyType> types = new ArrayList<>();
		for(PhotographyType photographyType : photographyTypesList)
		{
			PhotographyType photographyType2 = new PhotographyType();
			photographyType2.setId(photographyType.getId());
			photographyType2.setTypeName(photographyType.getTypeName());
			photographyType2.setTypeDescription(photographyType.getTypeDescription());
			photographyType2.setStatus(photographyType.isStatus());
			
			types.add(photographyType2);
		}		
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListAllPhotographyTypes(types);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchPhotographyTypeById(long id) {
		boolean status = false;
		
		PhotographyType photographyType = photographyTypeDao.findOne(id);
		
		PhotographyType photographyType2 = new PhotographyType();
		photographyType2.setId(photographyType.getId());
		photographyType2.setTypeName(photographyType.getTypeName());
		photographyType2.setTypeDescription(photographyType.getTypeDescription());
		photographyType2.setStatus(photographyType.isStatus());
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setPhotographyType(photographyType2);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
