package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.PhotographyOccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.PhotographyOccasion;
import com.wedlock.model.PhotographyType;
import com.wedlock.service.PhotographyOccasionService;

@Transactional
@Service
public class PhotographyOccasionServiceImpl implements PhotographyOccasionService{

	@Autowired
	private PhotographyOccasionDao photographyOccasionDao;
	@Override
	public AdminResponseClass savePhotographyOccasion(PhotographyOccasion photographyOccasion, String [] photographyOccasionValues) {
		boolean status = false;
		if(photographyOccasion.getEditPhotographyOccasionId() == 0){
			photographyOccasion.setStatus(Boolean.TRUE);
		}
		photographyOccasionDao.save(photographyOccasion);
		status = true;
		
		if(photographyOccasionValues.length > 0){
			for(int i = 0; i<photographyOccasionValues.length;i++){
				PhotographyOccasion photographyOccasion2 = new PhotographyOccasion();
				
				String values[] = photographyOccasionValues[i].split(",");
				photographyOccasion2.setOccasionName(values[0]);
				if(values.length > 1){
					photographyOccasion2.setOccasionDescription(values[1]);
				}
				photographyOccasion2.setStatus(Boolean.TRUE);
				photographyOccasionDao.save(photographyOccasion);
				if(photographyOccasionDao.save(photographyOccasion2)==null){
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
	public AdminResponseClass fetchAllPhotographyOccasions() {
		boolean status = false;
		
		List<PhotographyOccasion> photographyOccasionsList = photographyOccasionDao.findAll(new Sort(Sort.Direction.ASC, "occasionName"));
		status = true;

		List<PhotographyOccasion> occasions = new ArrayList<>();
		for(PhotographyOccasion photographyOccasion : photographyOccasionsList)
		{
			PhotographyOccasion photographyOccasion2= new PhotographyOccasion();
			photographyOccasion2.setId(photographyOccasion.getId());
			photographyOccasion2.setOccasionName(photographyOccasion.getOccasionName());
			photographyOccasion2.setOccasionDescription(photographyOccasion.getOccasionDescription());
			photographyOccasion2.setStatus(photographyOccasion.isStatus());
			
			occasions.add(photographyOccasion2);
		}		
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListAllPhotographyOccasions(occasions);;
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchPhotographyOccasionById(long id) {
		boolean status = false;
		
		PhotographyOccasion photographyOccasion = photographyOccasionDao.findOne(id);
		
		PhotographyOccasion photographyOccasion2 = new PhotographyOccasion();
		photographyOccasion2.setId(photographyOccasion.getId());
		photographyOccasion2.setOccasionName(photographyOccasion.getOccasionName());
		photographyOccasion2.setOccasionDescription(photographyOccasion.getOccasionDescription());
		photographyOccasion2.setStatus(photographyOccasion.isStatus());
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setPhotographyOccasion(photographyOccasion2);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
