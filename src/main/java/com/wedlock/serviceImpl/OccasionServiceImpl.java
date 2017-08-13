package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.OccasionDao;
import com.wedlock.dao.ProductOccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;
import com.wedlock.service.OccasionService;

@Transactional
@Service
public class OccasionServiceImpl implements OccasionService {

	@Autowired
	private OccasionDao occasionDao;
	@Autowired
	private ProductOccasionDao productOccasionDao;
	@PersistenceContext
	EntityManager manager;

	@Override
	public AdminResponseClass addEditOccasion(Occasion occasion) {
		boolean status = false;

		//occasion.setStatus(Boolean.TRUE);
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
		adminResponseClass.setListAllOccasion(listOccasion);
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
	
	@Override
	public AdminResponseClass fetchAllOccasionsWithStatus() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select occ from Occasion occ where occ.status=true order by occ.name");
		
		
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<Occasion> occasionList = query.getResultList();
			List<Occasion> occasions = new ArrayList<>();
			
			for(Occasion occasion : occasionList)
			{
				Occasion occasion2 = new Occasion();
				occasion2.setId(occasion.getId());
				occasion2.setName(occasion.getName());
				occasion2.setDescription(occasion.getDescription());
				occasion2.setStatus(occasion.isStatus());
				
				occasions.add(occasion2);
			}
			adminResponseClass.setListAllOccasion(occasions);
			status=true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass deleteOccasionByAllProductsAndOccasionId(long allProductId, long occasionId) {
		boolean status = false;
		Query query = manager.createQuery("Delete from IntProductOccasion ipo where ipo.allProducts.id =:allProductId AND ipo.occasion.id !=:occasionId").setParameter("allProductId", allProductId).setParameter("occasionId", occasionId);
		int deletedCount = query.executeUpdate();
		System.out.println("///Deleted Count is"+deletedCount);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(deletedCount == 1){
			adminResponseClass.setStatus(status);
		}else{
			System.out.println("///In else reh");
			adminResponseClass.setStatus(Boolean.FALSE);
		}
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass saveIntProductOcc(IntProductOccasion intProductOcc, int isEdit) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(isEdit == 1){
			TypedQuery<IntProductOccasion> typedQuery= manager.createQuery("Select ipo from IntProductOccasion ipo where ipo.allProducts.id LIKE:allProductId AND ipo.occasion.id LIKE:occasionId",IntProductOccasion.class).setParameter("allProductId", intProductOcc.getAllProducts().getId()).setParameter("occasionId", intProductOcc.getOccasion().getId());
			if(typedQuery.getResultList().isEmpty()){
				isEdit = 0;
			}
		}
		
		if(isEdit == 0)
		{
			intProductOcc.setEntryTime(new Date());
			intProductOcc.setStatus(Boolean.TRUE);
			productOccasionDao.save(intProductOcc);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
