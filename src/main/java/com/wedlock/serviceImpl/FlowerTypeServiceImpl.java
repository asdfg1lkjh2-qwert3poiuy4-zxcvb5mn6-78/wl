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

/*@Transactional
@Service
public class FlowerTypeServiceImpl implements FlowerTypeService {

	@Autowired
	private FlowerTypeDao flowerTypeDao;

	@Override
	public AdminResponseClass saveFlowerType(FlowerType flowerType) {
		boolean status = false;
		flowerTypeDao.save(flowerType);
		status = true;

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllFlowerType() {

		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		List<FlowerType> listFlowerType = flowerTypeDao.findAll();
		status = true;

		
		List<FlowerType> listFlowerTypeMod = new ArrayList<>();
		for(FlowerType flowerType:listFlowerType){
			//System.out.println("jhgjgj\\ "+flowerType.getId());
			//System.out.println("jhgjgj\\ "+flowerType.getName());
			FlowerType element = new FlowerType();
			element.setId(flowerType.getId());
			element.setName((flowerType.getName()));
			element.setDescription(flowerType.getDescription());
			listFlowerTypeMod.add(element);
		}
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllFlowerType(listFlowerTypeMod);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchFlowerTypeById(int id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		FlowerType flowerType = flowerTypeDao.findOne(id);
		status = true;
		adminResponseClass.setStatus(status);
		
		FlowerType flowerTypeMod = new FlowerType();
		flowerTypeMod.setId(flowerType.getId());
		flowerTypeMod.setName(flowerType.getName());
		flowerTypeMod.setDescription(flowerType.getDescription());
		
		adminResponseClass.setFlowerType(flowerTypeMod);
		return adminResponseClass;
	}

*/
}
