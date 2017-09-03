package com.wedlock.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.CatererDao;
import com.wedlock.dao.OccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Caterer;
import com.wedlock.model.FoodOfPackage;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerDiscount;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.CatererService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class CatererServiceImpl implements CatererService{

	@Autowired
	private CatererDao catererDao;
	
	@PersistenceContext
	EntityManager manager;
	@Autowired
	private OccasionDao occasionDao;
	@Override
	public AdminResponseClass findLastCatererId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)catererDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select f from Caterer f ORDER BY f.id desc");
			query.setMaxResults(1);
			Caterer caterer = (Caterer)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(caterer.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass saveCaterer(Caterer caterer) {
		boolean status = false;
		caterer.setStatus(Boolean.TRUE);
		catererDao.save(caterer);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllCatererProductsBySellerId(SellerDetails sellerDetails) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();

		try {
			Query query = manager.createQuery("Select ctr from Caterer ctr where ctr.allProducts.sellerDetails.id =:sellerId and ctr.status =true order by ctr.entryTime");
			query.setParameter("sellerId", sellerDetails.getId());

			if (!(query.getResultList().isEmpty())) {
				int hasFound = 0;
				@SuppressWarnings("unchecked")
				List<Caterer> listCaterer = query.getResultList();
				List<Caterer> modListCaterer = new ArrayList<>();
				List<SellerProductPricing> listProductPricings = new ArrayList<>();

				for (Caterer caterer : listCaterer) {
					Caterer singleCaterer = new Caterer();
					singleCaterer.setName(caterer.getName());
					singleCaterer.setDpUrl(caterer.getDpUrl());
					singleCaterer.setId(caterer.getId());
					singleCaterer.setAllProductId(caterer.getAllProducts().getId());
					singleCaterer.setStatus(caterer.isStatus());
					modListCaterer.add(singleCaterer);
					Date date = new SimpleDateFormat("yyyy-MM-dd").parse(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
					for (SellerProductPricing sellerProductPricing : caterer.getAllProducts().getSellerProductPricing()) 
					{
						if ((date.after(sellerProductPricing.getPriceFromDate())
								&& date.before(sellerProductPricing.getPriceToDate()))
								|| (date.equals(sellerProductPricing.getPriceFromDate()))
								|| (date.equals(sellerProductPricing.getPriceToDate()))) 
						{
							SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
							sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
							sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
							sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
							sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
							System.out.println("///In if" + sellerProductPricing2.getPrice());
							listProductPricings.add(sellerProductPricing2);
							hasFound = 1;
							break;
						}
					}
					if (hasFound == 0) {
						SellerProductPricing sellerProductPricing = new SellerProductPricing();
						sellerProductPricing.setPrice(0.00);
						listProductPricings.add(sellerProductPricing);
					} else {
						hasFound = 0;
					}
				}
				adminResponseClass.setListAllCaterer(modListCaterer);
				adminResponseClass.setListProductPricings(listProductPricings);
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchCatererByCatererId(String id, String sellerId) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try
		{
			boolean status = false;
			Caterer caterer = catererDao.findOne(id);
			if(!caterer.getAllProducts().getSellerDetails().getId().equalsIgnoreCase(sellerId))
			{
				return null;
			}
			status = true;
			List<SellerProductImagesVideos> listProductImages = new ArrayList<>();
			List<SellerProductPricing> listProductPricings = new ArrayList<>();
			List<SellerDiscount> listSellerDiscounts = new ArrayList<>();
			List<IntProductOccasion> listOccasions = new ArrayList<>();
			List<FoodOfPackage> listFoodOfPackage = new ArrayList<>();
			for(SellerProductImagesVideos sellerProductImagesVideos : caterer.getAllProducts().getSellerProductImagesVideos()){
					SellerProductImagesVideos sellerProductImagesVideos2 = new SellerProductImagesVideos();
					sellerProductImagesVideos2.setId(sellerProductImagesVideos.getId());
					sellerProductImagesVideos2.setProductImageVideoUrl(sellerProductImagesVideos.getProductImageVideoUrl());
					sellerProductImagesVideos2.setPhotoVideo(sellerProductImagesVideos.isPhotoVideo());
					listProductImages.add(sellerProductImagesVideos2);
				
			}
			for(IntProductOccasion intProductOccasion:caterer.getAllProducts().getIntProductOcc()){
				IntProductOccasion intProductOccasion2 = new IntProductOccasion();
				intProductOccasion2.setId(intProductOccasion.getId());
				intProductOccasion.setOccasion(intProductOccasion.getOccasion());
				Occasion occasion = occasionDao.findOne(intProductOccasion.getOccasion().getId());
				intProductOccasion2.setOccasion(occasion);
				listOccasions.add(intProductOccasion2);
			}
			for(SellerProductPricing sellerProductPricing :caterer.getAllProducts().getSellerProductPricing()){
					SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
					sellerProductPricing2.setId(sellerProductPricing.getId());
					sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
					sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
					sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
					sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
					listProductPricings.add(sellerProductPricing2);
			}
			if(!(caterer.getAllProducts().getSellerDiscount().isEmpty())){
				for(SellerDiscount sellerDiscount:caterer.getAllProducts().getSellerDiscount())
				{
					SellerDiscount sellerDiscount2 = new SellerDiscount();
					sellerDiscount2.setId(sellerDiscount.getId());
					sellerDiscount2.setDiscount(sellerDiscount.getDiscount());
					sellerDiscount2.setFromDateDiscount(sellerDiscount.getFromDateDiscount());
					sellerDiscount2.setToDateDiscount(sellerDiscount.getToDateDiscount());
					sellerDiscount2.setFlatDiscount(sellerDiscount.isFlatDiscount());
					sellerDiscount2.setStatus(sellerDiscount.isStatus());
					listSellerDiscounts.add(sellerDiscount2);
				}
			}
			else{
				SellerDiscount sellerDiscount = null;
				listSellerDiscounts.add(sellerDiscount);
			}
			
			if(!(caterer.getAllProducts().getFoodOfPackage().isEmpty()))
			{
				for(FoodOfPackage foodOfPackage : caterer.getAllProducts().getFoodOfPackage())
				{
					FoodOfPackage foodOfPackage2 = new FoodOfPackage();
					if(foodOfPackage.isStatus())
					{
						foodOfPackage2.setId(foodOfPackage.getId());
						foodOfPackage2.setFood(foodOfPackage.getFood());
						foodOfPackage.setStatus(foodOfPackage.isStatus());
						listFoodOfPackage.add(foodOfPackage2);
					}
				}
			}
			else
			{
				FoodOfPackage foodOfPackage = null;
				listFoodOfPackage.add(foodOfPackage);
			}
			
			adminResponseClass.setCaterer(caterer);
			adminResponseClass.setListProductImagesVideos(listProductImages);
			adminResponseClass.setListProductPricings(listProductPricings);
			adminResponseClass.setListSellerDiscount(listSellerDiscounts);
			adminResponseClass.setListIntProductOccasion(listOccasions);
			adminResponseClass.setListFoodOfPackage(listFoodOfPackage);
			adminResponseClass.setStatus(status);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
}

