package com.wedlock.serviceImpl;

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
	
	/*@Override
	public AdminResponseClass fetchSellerPhotographerById(String photographerId) {
		System.out.println("////Photographer Id is"+photographerId);
		boolean status = false;
		SellerPhotographer sellerPhotographer = sellerPhotographerDao.findOne(photographerId);
		status = true;
		List<SellerProductImagesVideos> listProductImages = new ArrayList<>();
		List<SellerProductPricing> listProductPricings = new ArrayList<>();
		List<SellerDiscount> listSellerDiscounts = new ArrayList<>();
		List<SellerPhotographyOccasion> listPhotographyOccasions = new ArrayList<>();
		for(SellerProductImagesVideos sellerProductImagesVideos : sellerPhotographer.getAllProducts().getSellerProductImagesVideos()){
				SellerProductImagesVideos sellerProductImagesVideos2 = new SellerProductImagesVideos();
				sellerProductImagesVideos2.setId(sellerProductImagesVideos.getId());
				sellerProductImagesVideos2.setProductImageVideoUrl(sellerProductImagesVideos.getProductImageVideoUrl());
				sellerProductImagesVideos2.setPhotoVideo(sellerProductImagesVideos.isPhotoVideo());
				listProductImages.add(sellerProductImagesVideos2);
			
		}
		for(SellerPhotographyOccasion photographyOccasion:sellerPhotographer.getSellerPhotographyOccasions()){
			SellerPhotographyOccasion photographyOccasion2 = new SellerPhotographyOccasion();
			photographyOccasion2.setId(photographyOccasion.getId());
			PhotographyOccasion photographyOccasion3 = photographyOccasionDao.findOne(photographyOccasion.getPhotographyOccasion().getId());
			photographyOccasion2.setPhotographyOccasion(photographyOccasion3);
			listPhotographyOccasions.add(photographyOccasion2);
		}
		for(SellerProductPricing sellerProductPricing :sellerPhotographer.getAllProducts().getSellerProductPricing()){
				SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
				sellerProductPricing2.setId(sellerProductPricing.getId());
				sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
				sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
				sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
				sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
				listProductPricings.add(sellerProductPricing2);
		}
		if(!(sellerPhotographer.getAllProducts().getSellerDiscount().isEmpty())){
			for(SellerDiscount sellerDiscount:sellerPhotographer.getAllProducts().getSellerDiscount()){
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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSellerPhotographer(sellerPhotographer);
		adminResponseClass.setListProductImagesVideos(listProductImages);
		adminResponseClass.setListProductPricings(listProductPricings);
		adminResponseClass.setListSellerDiscount(listSellerDiscounts);
		adminResponseClass.setListPhotographyOccasions(listPhotographyOccasions);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchAllPhotographyProducts() throws ParseException {
		boolean status = false;
		List<SellerPhotographer> listSellerPhotographers = sellerPhotographerDao.findAll();
		status = true;
		int hasFound = 0;
		List<SellerProductImagesVideos> listProductImages = new ArrayList<>();
		List<SellerProductPricing> listProductPricings = new ArrayList<>();
		for(SellerPhotographer sellerPhotographer : listSellerPhotographers){
			for(SellerProductImagesVideos sellerProductImagesVideos : sellerPhotographer.getAllProducts().getSellerProductImagesVideos()){
				if(sellerProductImagesVideos.isPhotoVideo() == Boolean.TRUE){
					SellerProductImagesVideos sellerProductImagesVideos2 = new SellerProductImagesVideos();
					sellerProductImagesVideos2.setProductImageVideoUrl(sellerProductImagesVideos.getProductImageVideoUrl());
					listProductImages.add(sellerProductImagesVideos2);
					break;
				}
			}
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String checkDate = simpleDateFormat.format(date);
			date = simpleDateFormat.parse(checkDate);
			for(SellerProductPricing sellerProductPricing :sellerPhotographer.getAllProducts().getSellerProductPricing()){
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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListSellerPhotographers(listSellerPhotographers);
		adminResponseClass.setListProductImagesVideos(listProductImages);
		adminResponseClass.setListProductPricings(listProductPricings);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}*/

}
