package com.wedlock.serviceImpl;

import java.text.ParseException;
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

import com.wedlock.dao.PhotographyOccasionDao;
import com.wedlock.dao.SellerPhotographerDao;
import com.wedlock.dao.SellerProductPricingDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.PhotographyOccasion;
import com.wedlock.model.SellerDiscount;
import com.wedlock.model.SellerPhotographer;
import com.wedlock.model.SellerPhotographyOccasion;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.SellerPhotographerService;


@Service
public class SellerPhotographerServiceImpl implements SellerPhotographerService{

	@Autowired
	private SellerPhotographerDao sellerPhotographerDao;
	@Autowired
	private SellerProductPricingDao sellerProductPricingDao;
	@Autowired
	private PhotographyOccasionDao photographyOccasionDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass findLastSellerPhotographerId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)sellerPhotographerDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select s from SellerPhotographer s ORDER BY s.id desc");
			query.setMaxResults(1);
			SellerPhotographer sellerPhotographer = (SellerPhotographer)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(sellerPhotographer.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public AdminResponseClass saveSellerPhotographer(SellerPhotographer sellerPhotographer) {
		boolean status = false;
		sellerPhotographer.setEntryTime(new Date());
		sellerPhotographerDao.save(sellerPhotographer);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchSellerPhotographerById(String photographerId, String sellerId) {
		System.out.println("////Photographer Id is"+photographerId);
		boolean status = false;
		SellerPhotographer sellerPhotographer = sellerPhotographerDao.findOne(photographerId);
		if(!sellerPhotographer.getAllProducts().getSellerDetails().getId().equalsIgnoreCase(sellerId))
		{
			return null;
		}
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
	}
	@Override
	public AdminResponseClass fetchPhotographyProductsByIdForAddEdit(String photographerId) {
		boolean status = false;
	    SellerPhotographer sellerPhotographer = sellerPhotographerDao.findOne(photographerId);
	    status = true;
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
	    adminResponseClass.setSellerPhotographer(sellerPhotographer);
	    adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
}
