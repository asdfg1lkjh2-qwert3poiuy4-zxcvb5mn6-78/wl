package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.CategoryAvailableDao;
import com.wedlock.dao.ProductTypeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.ProductType;
import com.wedlock.service.ProductTypeService;

@Transactional
@Service
public class ProductTypeServiceImpl implements ProductTypeService{

	@Autowired
	private ProductTypeDao productTypeDao;
	@Autowired 
	CategoryAvailableDao categoryAvailableDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveProductType(ProductType productType, String [] productValues) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		CategoryAvailable categoryAvailable = categoryAvailableDao.findOne(productType.getCategoryId());
		if(categoryAvailable == null)
		{
			adminResponseClass.setStatus(status);
			return adminResponseClass;
		}
		
		productType.setCategoryAvailable(categoryAvailable);
		if(productType.getEditTypeId() == 0){
			productType.setStatus(Boolean.TRUE);
		}
		productTypeDao.save(productType);
		status = true;
		
		if(productValues.length > 0){
			for(int i = 0; i<productValues.length;i++){
				ProductType productType2 = new ProductType();
				
				String values[] = productValues[i].split(",");
				productType2.setTypeName(values[0]);
				if(values.length > 1){
					productType2.setTypeDescription(values[1]);
				}
			    productType2.setStatus(Boolean.TRUE);
			    productType2.setCategoryAvailable(categoryAvailable);
				productTypeDao.save(productType2);
				if(productTypeDao.save(productType2)==null){
					status = false;
					break;
				}
			}
		}
		
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllProductTypes() {
		boolean status = false;
		List<ProductType> productTypesList = productTypeDao.findAll(new Sort(Sort.Direction.ASC, "typeName"));
		status = true;

		/*List<ProductType> types = new ArrayList<>();
		for(ProductType productType : productTypesList)
		{
			ProductType productType2 = new ProductType();
			productType2.setId(productType.getId());
			productType2.setTypeName(productType.getTypeName());
			productType2.setTypeDescription(productType.getTypeDescription());
			productType2.setStatus(productType.isStatus());
			
			types.add(productType2);
		}	*/	
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListAllProductTypes(productTypesList);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchProductTypeById(long id) {
		boolean status = false;
		
		ProductType productType = productTypeDao.findOne(id);
		status = true;
		
		/*ProductType productType2 = new ProductType();
		productType2.setId(productType.getId());
		productType2.setTypeName(productType.getTypeName());
		productType2.setTypeDescription(productType.getTypeDescription());
		productType2.setStatus(productType.isStatus());*/
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setProductType(productType);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass fetchProductTypesWithStatusByCat(String catName)
	{
		boolean status = false;	
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select pt from ProductType pt where pt.categoryAvailable.categoryName=:catName AND pt.categoryAvailable.isActive=true AND pt.status=true order by pt.typeName");
		query.setParameter("catName", catName);
		
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<ProductType> productTypesList = query.getResultList();
			List<ProductType> modProductTypesList = new ArrayList<>();
			for(ProductType productType : productTypesList)
			{
				ProductType productType2 = new ProductType();
				productType2.setId(productType.getId());
				productType2.setTypeName(productType.getTypeName());
				productType2.setTypeDescription(productType.getTypeDescription());
				productType2.setStatus(productType.isStatus());
				modProductTypesList.add(productType2);
			}
			status = true;
			adminResponseClass.setListAllProductTypes(modProductTypesList);
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
		
	}
	
	@Override
	public AdminResponseClass fetchProductTypeByIdWithStatus(long id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		Query query = manager.createQuery("Select pt from ProductType pt where pt.id=:id AND pt.categoryAvailable.isActive=true AND pt.status=true");
		query.setParameter("id", id);
		
		if(!(query.getResultList().isEmpty()))
		{
			ProductType productType = (ProductType) query.getResultList().get(0);
			status = true;
			adminResponseClass.setProductType(productType);
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
