package com.wedlock.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FlowerTypeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FlowerType;
import com.wedlock.service.FlowerTypeService;

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
	}

}
