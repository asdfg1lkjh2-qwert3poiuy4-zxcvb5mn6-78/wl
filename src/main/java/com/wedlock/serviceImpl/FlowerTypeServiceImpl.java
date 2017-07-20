package com.wedlock.serviceImpl;


import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FlowerTypeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FlowerType;
import com.wedlock.service.FlowerTypeService;

/*
@Transactional
@Service
public class FlowerTypeServiceImpl implements FlowerTypeService{

	@Autowired
	private FlowerTypeDao flowerTypeDao;
	@Override
	public AdminResponseClass saveFlowerType(FlowerType flowerType) {
		boolean status = false;
		flowerType.setStatus(Boolean.TRUE);
		flowerTypeDao.save(flowerType);
		status = true;
		AdminResponseClass adminResponseClass = new  AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}*/

@Transactional
@Service
public class FlowerTypeServiceImpl implements FlowerTypeService {
	
	@Autowired
	private FlowerTypeDao flowerTypeDao;
	@Override
	public AdminResponseClass saveFlowerType(FlowerType flowerType) {
		boolean status = false;
		//flowerType.setStatus(Boolean.TRUE);
		flowerTypeDao.save(flowerType);
		status = true;
		AdminResponseClass adminResponseClass = new  AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllFlowerType() {

		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		java.util.List<FlowerType> listFlowerType = flowerTypeDao.findAll();	
		status = true;

		
		java.util.List<FlowerType> listFlowerTypeMod = new ArrayList<>();
		for(FlowerType flowerType:listFlowerType){
			//System.out.println("jhgjgj\\ "+flowerType.getId());
			//System.out.println("jhgjgj\\ "+flowerType.getName());
			FlowerType element = new FlowerType();
			element.setId(flowerType.getId());
			element.setName((flowerType.getName()));
			element.setDescription(flowerType.getDescription());
			element.setStatus(flowerType.isStatus());
			listFlowerTypeMod.add(element);
		}
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllFlowerType(listFlowerTypeMod);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchFlowerTypeById(Long id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		FlowerType flowerType = flowerTypeDao.findOne(id);
		status = true;
		adminResponseClass.setStatus(status);
		
		FlowerType flowerTypeMod = new FlowerType();
		flowerTypeMod.setId(flowerType.getId());
		flowerTypeMod.setName(flowerType.getName());
		flowerTypeMod.setDescription(flowerType.getDescription());
		flowerTypeMod.setStatus(flowerType.isStatus());
		
		adminResponseClass.setFlowerType(flowerTypeMod);
		return adminResponseClass;
	}
}
