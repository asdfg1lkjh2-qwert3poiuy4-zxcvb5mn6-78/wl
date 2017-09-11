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

import com.wedlock.dao.HallsDao;
import com.wedlock.dao.OccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Caterer;
import com.wedlock.model.FoodOfPackage;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.Halls;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;
import com.wedlock.model.SellerDiscount;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.HallsService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class HallsServiceImpl implements HallsService{

	@Autowired
	private HallsDao hallsDao;
	
	@PersistenceContext
	EntityManager manager;
	@Autowired
	private OccasionDao occasionDao;
	@Override
	public AdminResponseClass findLastHallId() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		int count =(int)hallsDao.count();
		if(count < 1){
			adminResponseClass.setLastId("0");
			status = true;
		}else{
			Query query = manager.createQuery("Select h from Halls h ORDER BY h.id desc");
			query.setMaxResults(1);
			Halls hall = (Halls)query.getSingleResult();
			status = true;
			adminResponseClass.setLastId(hall.getId());
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	
	@Override
	public AdminResponseClass saveHall(Halls hall) {
		boolean status = false;
		hall.setStatus(Boolean.TRUE);
		hallsDao.save(hall);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllHallsBySellerId(String sellerId) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();

		try {
			Query query = manager.createQuery("Select hls from Halls hls where hls.allProducts.sellerDetails.id =:sellerId and hls.status =true order by hls.entryTime");
			query.setParameter("sellerId", sellerId);

			if (!(query.getResultList().isEmpty())) {
				int hasFound = 0;
				@SuppressWarnings("unchecked")
				List<Halls> listHall = query.getResultList();
				List<Halls> modListHall = new ArrayList<>();
				List<SellerProductPricing> listProductPricings = new ArrayList<>();

				for (Halls hall : listHall) {
					Halls singleHall = new Halls();
					singleHall.setName(hall.getName());
					singleHall.setDpUrl(hall.getDpUrl());
					singleHall.setId(hall.getId());
					singleHall.setAllProductId(hall.getAllProducts().getId());
					singleHall.setStatus(hall.isStatus());
					modListHall.add(singleHall);
					Date date = new Date(); //new SimpleDateFormat("yyyy-MM-dd").parse(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
					for (SellerProductPricing sellerProductPricing : hall.getAllProducts().getSellerProductPricing()) 
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
				adminResponseClass.setListAllHalls(modListHall);
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
	public AdminResponseClass fetchHallByHallId(String hallId, String sellerId) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try
		{
			boolean status = false;
			Halls hall = hallsDao.findOne(hallId);
			if(!hall.getAllProducts().getSellerDetails().getId().equalsIgnoreCase(sellerId))
			{
				return null;
			}
			status = true;
			List<SellerProductImagesVideos> listProductImages = new ArrayList<>();
			List<SellerProductPricing> listProductPricings = new ArrayList<>();
			List<SellerDiscount> listSellerDiscounts = new ArrayList<>();
			List<IntProductOccasion> listOccasions = new ArrayList<>();
			List<FreesProduct> listFreesProducts = new ArrayList<>();
			for(SellerProductImagesVideos sellerProductImagesVideos : hall.getAllProducts().getSellerProductImagesVideos()){
					SellerProductImagesVideos sellerProductImagesVideos2 = new SellerProductImagesVideos();
					sellerProductImagesVideos2.setId(sellerProductImagesVideos.getId());
					sellerProductImagesVideos2.setProductImageVideoUrl(sellerProductImagesVideos.getProductImageVideoUrl());
					sellerProductImagesVideos2.setPhotoVideo(sellerProductImagesVideos.isPhotoVideo());
					listProductImages.add(sellerProductImagesVideos2);
				
			}
			for(IntProductOccasion intProductOccasion:hall.getAllProducts().getIntProductOcc()){
				IntProductOccasion intProductOccasion2 = new IntProductOccasion();
				intProductOccasion2.setId(intProductOccasion.getId());
				intProductOccasion.setOccasion(intProductOccasion.getOccasion());
				Occasion occasion = occasionDao.findOne(intProductOccasion.getOccasion().getId());
				intProductOccasion2.setOccasion(occasion);
				listOccasions.add(intProductOccasion2);
			}
			for(SellerProductPricing sellerProductPricing :hall.getAllProducts().getSellerProductPricing()){
					SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
					sellerProductPricing2.setId(sellerProductPricing.getId());
					sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
					sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
					sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
					sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
					listProductPricings.add(sellerProductPricing2);
			}
			if(!(hall.getAllProducts().getSellerDiscount().isEmpty())){
				for(SellerDiscount sellerDiscount:hall.getAllProducts().getSellerDiscount())
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
			
			if(!(hall.getAllProducts().getFreeWith().isEmpty())){
				for(FreesProduct freesProduct : hall.getAllProducts().getFreeWith()){
					FreesProduct freesProduct2 = new FreesProduct();
					freesProduct2.setQty(freesProduct.getQty());
					Query query = manager.createQuery("Select tb.id, tb.name from "+freesProduct.getToId().getCategoryAvailable().getTableName()+" tb WHERE tb.allProducts.id= :allProductsId").setParameter("allProductsId", freesProduct.getToId().getId());
					@SuppressWarnings("unchecked")
					List<Object[]> list = query.getResultList();
					for(Object[] obj : list){
						freesProduct2.setProductName(obj[1].toString());
					}
					try {
						freesProduct2.setValidFrom(new SimpleDateFormat("yyyy-MM-dd").parse(freesProduct.getUpdateTime().toString()));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					freesProduct2.setValidTo(freesProduct.getValidTo());
					freesProduct2.setToId(freesProduct.getToId());
					freesProduct2.setStatus(freesProduct.isStatus());
					listFreesProducts.add(freesProduct2);
				}
			}else{
				FreesProduct freesProduct = null;
				listFreesProducts.add(freesProduct);
			}
			
			adminResponseClass.setHall(hall);
			adminResponseClass.setListProductImagesVideos(listProductImages);
			adminResponseClass.setListProductPricings(listProductPricings);
			adminResponseClass.setListSellerDiscount(listSellerDiscounts);
			adminResponseClass.setListIntProductOccasion(listOccasions);
			adminResponseClass.setListFreesProducts(listFreesProducts);
			adminResponseClass.setStatus(status);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
}

