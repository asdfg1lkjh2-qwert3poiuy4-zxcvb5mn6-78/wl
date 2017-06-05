package com.wedlock.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.OccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Occasion;
import com.wedlock.service.OccasionService;

@Transactional
@Service
public class OccasionServiceImpl implements OccasionService {

	@Autowired
	private OccasionDao occasionDao;

	@Override
	public AdminResponseClass addEditOccasion(Occasion occasion) {
		boolean status = false;

		occasion.setActive(Boolean.TRUE);
		occasionDao.save(occasion);

		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllOccasions() {
		boolean status = false;
		
		List<Occasion> listOccasion = occasionDao.findAll();
		
		status=true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setOccasions(listOccasion);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchOccasionsById(long id) {
		boolean status = false;
		
		Occasion occasion = occasionDao.findOne(id);
		
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setOccasion(occasion);
		return adminResponseClass;
	}

}
