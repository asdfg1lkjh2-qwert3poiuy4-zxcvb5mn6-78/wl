package com.wedlock.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CategoryAvailableDao;
import com.wedlock.dao.CategoryTakenDao;
import com.wedlock.dao.SellerBankDetailsDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.CategoryTaken;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.CategoryAvailableService;

@Transactional
@Service
public class CategoryAvailableServiceImpl implements CategoryAvailableService{

	@Autowired
	private CategoryAvailableDao categoryAvailableDao;
	@Autowired
	private SellerDao sellerDao; 
	@PersistenceContext
	EntityManager manager;
	@Autowired
	HttpSession httpSession;
	@Autowired
	private CategoryTakenDao categoryTakenDao;
	@Override
	public AdminResponseClass saveCategoryAvailable(CategoryAvailable categoryAvailable) {
		boolean status = false;
		
		categoryAvailable.setActive(Boolean.TRUE);
		categoryAvailableDao.save(categoryAvailable);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllCategoryAvailble() {
		boolean status = false;
		
		Query query = manager.createQuery("Select c from CategoryAvailable c where c.categoryUrl IS NULL and c.isActive =:isActive");
		query.setParameter("isActive", Boolean.TRUE);
		@SuppressWarnings("unchecked")
		List<CategoryAvailable> listCategoryAvailable = query.getResultList();
		status = true;
		
		/*List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
	    
		adminResponseClass.setCategoryAvailables(listCategoryAvailable);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchCategoryAvailableById(long id) {
		boolean status = false;
		
		
		CategoryAvailable categoryAvailable=categoryAvailableDao.findOne(id);
		status = true;
		
		/*CategoryAvailable categoryAvailable2 = new CategoryAvailable();
		categoryAvailable2.setId(categoryAvailable.getId());
		categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
		categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
		categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
		categoryAvailable2.setPackageFor(categoryAvailable.getPackageFor());
		categoryAvailable2.setRegistrationCharge(categoryAvailable.getRegistrationCharge());
		categoryAvailable2.setActive(categoryAvailable.isActive());*/
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setCategoryAvailable(categoryAvailable);
		
		
		return adminResponseClass;
	}
	@Override
	public List<CategoryAvailable> listFetchAllCategoryAvailble(boolean isSeller) {

		List<CategoryAvailable> listCategoryAvailable = new ArrayList<>();
		if(!isSeller){
			listCategoryAvailable = categoryAvailableDao.findAll();
		}else{
			SellerDetails sellerDetails = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String checkDate = simpleDateFormat.format(date);
			try {
				date = simpleDateFormat.parse(checkDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(date.after(sellerDetails.getSellerRegistrationEnd())){
				for(CategoryTaken categoryTaken: sellerDetails.getServiceTaken()){
						CategoryAvailable categoryAvailable = new CategoryAvailable();
						categoryAvailable = categoryAvailableDao.findOne(categoryTaken.getCategoryAvailable().getId());
					if (categoryTaken.isPaid()) {
						if (date.after(categoryTaken.getEndDate())) {
							CategoryTaken categoryTaken2 = categoryTakenDao.findOne(categoryTaken.getId());
							categoryTaken2.setPaid(Boolean.FALSE);
							categoryTakenDao.save(categoryTaken2);
							categoryAvailable.setPaidServiceTaken("No");
						}else{
							categoryAvailable.setPaidServiceTaken("Yes");
						}
					} else {
						categoryAvailable.setPaidServiceTaken("No");
					}
					System.out.println("/////Ispaidservicetaken is"+categoryAvailable.getPaidServiceTaken());	
					listCategoryAvailable.add(categoryAvailable);
				}
			}else{
				System.out.println("///In else reh");
				for(CategoryTaken categoryTaken: sellerDetails.getServiceTaken()){
					CategoryAvailable categoryAvailable = new CategoryAvailable();
					categoryAvailable = categoryAvailableDao.findOne(categoryTaken.getCategoryAvailable().getId());
					categoryAvailable.setPaidServiceTaken("Yes");
					listCategoryAvailable.add(categoryAvailable);
				}
			}
		}
		
		
//		CriteriaBuilder cb = manager.getCriteriaBuilder();
//		CriteriaQuery<CategoryAvailable> cq = cb.createQuery(CategoryAvailable.class);
//		// write the Root, Path elements as usual
//		Root<CategoryAvailable> root = cq.from(CategoryAvailable.class);
//		cq.select(cb.construct(CategoryAvailable.class,root.get("id"),root.get("categoryName"))).distinct(true);  
//		List<CategoryAvailable> result = manager.createQuery(cq).getResultList();
//		  
//		  for(CategoryAvailable categoryAvailable:result){
//			  System.out.println("/// Id is"+categoryAvailable.getId());
//			  System.out.println("///CategoryName is"+categoryAvailable.getCategoryName());
//			  System.out.println("///Category Icon File"+categoryAvailable.getIconFile());
//		  }
		
		/*List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}
		*/
		return listCategoryAvailable;
	}
	@Override
	public AdminResponseClass fetchAllCategoryAvailbleForDataTable() {
		boolean status = false;
		
		List<CategoryAvailable> listCategoryAvailable = categoryAvailableDao.findAll(new Sort(Sort.Direction.ASC, "categoryName"));
		status = true;
		
		/*List<CategoryAvailable> list = new ArrayList<CategoryAvailable>();
		for(CategoryAvailable categoryAvailable:listCategoryAvailable){
			CategoryAvailable categoryAvailable2 = new CategoryAvailable();
			categoryAvailable2.setId(categoryAvailable.getId());
			categoryAvailable2.setCategoryName(categoryAvailable.getCategoryName());
			categoryAvailable2.setCategoryDescription(categoryAvailable.getCategoryDescription());
			
			categoryAvailable2.setPackageFor(categoryAvailable.getPackageFor());
			categoryAvailable2.setRegistrationCharge(categoryAvailable.getRegistrationCharge());
			categoryAvailable2.setIconFile(categoryAvailable.getIconFile());
			
			categoryAvailable2.setCategoryUrl(categoryAvailable.getCategoryUrl());
			categoryAvailable2.setActive(categoryAvailable.isActive());
			list.add(categoryAvailable2);
		}*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
	    
		adminResponseClass.setCategoryAvailables(listCategoryAvailable);
		
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchCategoryByCategoryName(String categoryName) {
		boolean status = false;
		
		TypedQuery<CategoryAvailable> categoryAvailables = manager.createQuery("Select c from CategoryAvailable c where c.categoryName LIKE:categoryName", CategoryAvailable.class).setParameter("categoryName", categoryName.trim());
		CategoryAvailable categoryAvailable = categoryAvailables.getResultList().get(0);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setCategoryAvailable(categoryAvailable);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchCategoryByCategoryNameWithStatus(String categoryName) {
		boolean status = false;
		
		TypedQuery<CategoryAvailable> categoryAvailables = manager.createQuery("Select c from CategoryAvailable c where c.isActive = true and c.categoryName LIKE:categoryName", CategoryAvailable.class).setParameter("categoryName", categoryName.trim());
		CategoryAvailable categoryAvailable = categoryAvailables.getResultList().get(0);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setCategoryAvailable(categoryAvailable);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
