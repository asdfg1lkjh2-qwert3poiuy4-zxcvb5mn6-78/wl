package com.wedlock.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.FlowerDao;
import com.wedlock.dao.PhotographyOccasionDao;
import com.wedlock.dao.SellerProductPricingDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Flower;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.FlowerService;

@Transactional
@Service
public class FlowerServiceImpl implements FlowerService{

	@Autowired
	private FlowerDao flowerDao;
	/*
	@Autowired
	private SellerProductPricingDao sellerProductPricingDao;
	@Autowired
	private PhotographyOccasionDao photographyOccasionDao;*/
	
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass findLastFlowerId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)flowerDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select f from Flower f ORDER BY f.id desc");
			query.setMaxResults(1);
			Flower flower = (Flower)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(flower.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass saveFlower(Flower flower) {
		boolean status = false;
		flower.setStatus(Boolean.TRUE);
		flowerDao.save(flower);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllFlowerProductsById(SellerDetails sellerDetails) throws ParseException {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		Query query = manager.createQuery("Select fl from Flower fl where fl.allProducts.sellerDetails.id =:sellerId and fl.status =true order by fl.entryTime");
		query.setParameter("sellerId", sellerDetails.getId());
				if(!(query.getResultList().isEmpty()))
				{
					int hasFound = 0;
					@SuppressWarnings("unchecked")
					List<Flower> listFlower = query.getResultList();
					List<SellerProductPricing> listProductPricings = new ArrayList<>();
					
					for(Flower flower : listFlower)
					{
						Date date = new SimpleDateFormat("yyyy-MM-dd").parse(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
						for(SellerProductPricing sellerProductPricing :flower.getAllProducts().getSellerProductPricing()){
							if((date.after(sellerProductPricing.getPriceFromDate()) && date.before(sellerProductPricing.getPriceToDate())) || (date.equals(sellerProductPricing.getPriceFromDate())) || (date.equals(sellerProductPricing.getPriceToDate()))){
								SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
								sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
								System.out.println("///In if"+sellerProductPricing2.getPrice());
								listProductPricings.add(sellerProductPricing2);
								hasFound = 1;
								break;
							}
						}
						if(hasFound == 0){
							SellerProductPricing sellerProductPricing = new SellerProductPricing();
							sellerProductPricing.setPrice(0.00);
							listProductPricings.add(sellerProductPricing);
						}else{
							hasFound = 0;
						}
					}
					adminResponseClass.setListAllFlower(listFlower);
					adminResponseClass.setListProductPricings(listProductPricings);
					status = true;
				}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
}
