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

import com.wedlock.dao.FlowerDao;
import com.wedlock.dao.OccasionDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.model.Flower;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerDiscount;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.service.FlowerService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class FlowerServiceImpl implements FlowerService{

	@Autowired
	private FlowerDao flowerDao;
	
	@PersistenceContext
	EntityManager manager;
	@Autowired
	private OccasionDao occasionDao;
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
		
		/* long catId = 0;
		Query query = manager.createQuery("Select cat.id from CategoryAvailable cat where cat.isActive =true and cat.categoryName =:catName");
		query.setParameter("catName", catName);
		if(!(query.getResultList().isEmpty()))
		{
			catId = (long)query.getResultList().get(0);
		}*/
		
		Query query = manager.createQuery("Select fl from Flower fl where fl.allProducts.sellerDetails.id =:sellerId and fl.status =true order by fl.entryTime");
		query.setParameter("sellerId", sellerDetails.getId());
		
		if(!(query.getResultList().isEmpty()))
		{
			int hasFound = 0;
			@SuppressWarnings("unchecked")
			List<Flower> listFlower = query.getResultList();
			List<Flower> modListFlower = new ArrayList<>();
			List<SellerProductPricing> listProductPricings = new ArrayList<>();
			
			for(Flower flower : listFlower)
			{
				Flower singleFlower = new Flower();
				singleFlower.setName(flower.getName());
				singleFlower.setDpUrl(flower.getDpUrl());
				singleFlower.setId(flower.getId());
				singleFlower.setAllProductId(flower.getAllProducts().getId());
				singleFlower.setStatus(flower.isStatus());
				modListFlower.add(singleFlower);
				Date date = new SimpleDateFormat("yyyy-MM-dd").parse(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
				for(SellerProductPricing sellerProductPricing :flower.getAllProducts().getSellerProductPricing()){
					if((date.after(sellerProductPricing.getPriceFromDate()) && date.before(sellerProductPricing.getPriceToDate())) || (date.equals(sellerProductPricing.getPriceFromDate())) || (date.equals(sellerProductPricing.getPriceToDate()))){
						SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
						sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
						sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
						sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
						sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
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
			adminResponseClass.setListAllFlower(modListFlower);
			adminResponseClass.setListProductPricings(listProductPricings);
			status = true;
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
		}

	@Override
	public AdminResponseClass fetchAllFlowerById(String sellerId, String allProductId, String flowerId)
	{
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		if(sellerId.equals("") || allProductId.equals("") || flowerId.equals(""))
		{
			adminResponseClass.setStatus(status);
			return adminResponseClass;
		}
		
		AllProducts allProduct = null;
		Query query = manager.createQuery("Select ap from AllProducts ap where ap.id =:allProductId and ap.sellerDetails.id =:sellerId and ap.categoryAvailable.categoryName =:catName");
		query.setParameter("allProductId", Long.parseLong(allProductId));
		query.setParameter("sellerId", sellerId);
		query.setParameter("catName", "Florist");
		if(!(query.getResultList().isEmpty()))
		{
			allProduct = (AllProducts)query.getResultList().get(0);
			//allProduct.setCategoryAvailable(null);
			//allProduct.setSellerDetails(null);
			//status = true;
			adminResponseClass.setAllProducts(allProduct);
		}
		else
		{
			adminResponseClass.setStatus(status);
			return adminResponseClass;
					
		}
		
		Flower flower = flowerDao.findOne(flowerId);
		if(flower == null || flower.getAllProducts().getId() != Long.parseLong(allProductId))
		{
			adminResponseClass.setAllProducts(null);
			adminResponseClass.setStatus(status);
			return adminResponseClass;
		}
		//List<SellerProductPricing> listSPP = flower.getAllProducts().getSellerProductPricing();
		flower.setAllProducts(null);
		adminResponseClass.setFlower(flower);
		
		
		query = manager.createQuery("Select spiv from SellerProductImagesVideos spiv where spiv.allProducts.id =:allProductId and spiv.status =true order by spiv.entryTime");
		query.setParameter("allProductId", Long.parseLong(allProductId));
		
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<SellerProductImagesVideos> listSPIV = query.getResultList();
			for(int i=0; i<listSPIV.size(); i++)
			{
				listSPIV.get(i).setAllProducts(null);
			}
			adminResponseClass.setListProductImagesVideos(listSPIV);
		}
		
		query = manager.createQuery("Select spp from SellerProductPricing spp where spp.allProducts.id =:allProductId and spp.status =true order by spp.id desc");
		query.setMaxResults(3);
		query.setParameter("allProductId", Long.parseLong(allProductId));
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<SellerProductPricing> listSPP = query.getResultList();
			for(int i=0; i<listSPP.size(); i++)
			{
				listSPP.get(i).setAllProducts(null);
			}
			adminResponseClass.setListProductPricings(listSPP);
		}
		
		query = manager.createQuery("Select ipo from IntProductOccasion ipo where ipo.allProducts.id =:allProductId and ipo.status =true and ipo.occasion.status =true");
		query.setParameter("allProductId", Long.parseLong(allProductId));
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<IntProductOccasion> listIPO = query.getResultList();
			for(int i=0; i<listIPO.size(); i++)
			{
				listIPO.get(i).setAllProducts(null);
			}
			adminResponseClass.setListIntProductOccasion(listIPO);
		}
		
		query = manager.createQuery("Select sd from SellerDiscount sd where sd.allProducts.id =:allProductId and sd.status =true order by sd.id desc");
		query.setMaxResults(3);
		query.setParameter("allProductId", Long.parseLong(allProductId));
		if(!(query.getResultList().isEmpty()))
		{
			@SuppressWarnings("unchecked")
			List<SellerDiscount> listSD = query.getResultList();
			for(int i=0; i<listSD.size(); i++)
			{
				listSD.get(i).setAllProducts(null);
			}
			adminResponseClass.setListSellerDiscount(listSD);
		}
		
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchFlowerByFlowerId(String id,  String sellerId) {
		System.out.println("////Flower Id is"+id);
		boolean status = false;
		Flower flower = flowerDao.findOne(id);
		if(!flower.getAllProducts().getSellerDetails().getId().equalsIgnoreCase(sellerId))
		{
			return null;
		}
		status = true;
		List<SellerProductImagesVideos> listProductImages = new ArrayList<>();
		List<SellerProductPricing> listProductPricings = new ArrayList<>();
		List<SellerDiscount> listSellerDiscounts = new ArrayList<>();
		List<IntProductOccasion> listFlowerOccasions = new ArrayList<>();
		List<FreesProduct> listFreesProducts = new ArrayList<>();
		for(SellerProductImagesVideos sellerProductImagesVideos : flower.getAllProducts().getSellerProductImagesVideos()){
				SellerProductImagesVideos sellerProductImagesVideos2 = new SellerProductImagesVideos();
				sellerProductImagesVideos2.setId(sellerProductImagesVideos.getId());
				sellerProductImagesVideos2.setProductImageVideoUrl(sellerProductImagesVideos.getProductImageVideoUrl());
				sellerProductImagesVideos2.setPhotoVideo(sellerProductImagesVideos.isPhotoVideo());
				listProductImages.add(sellerProductImagesVideos2);
			
		}
		for(IntProductOccasion intProductOccasion:flower.getAllProducts().getIntProductOcc()){
			IntProductOccasion intProductOccasion2 = new IntProductOccasion();
			intProductOccasion2.setId(intProductOccasion.getId());
			intProductOccasion.setOccasion(intProductOccasion.getOccasion());
			Occasion occasion = occasionDao.findOne(intProductOccasion.getOccasion().getId());
			intProductOccasion2.setOccasion(occasion);
			listFlowerOccasions.add(intProductOccasion2);
		}
		for(SellerProductPricing sellerProductPricing :flower.getAllProducts().getSellerProductPricing()){
				SellerProductPricing sellerProductPricing2 = new SellerProductPricing();
				sellerProductPricing2.setId(sellerProductPricing.getId());
				sellerProductPricing2.setPrice(sellerProductPricing.getPrice());
				sellerProductPricing2.setPriceFromDate(sellerProductPricing.getPriceFromDate());
				sellerProductPricing2.setPriceToDate(sellerProductPricing.getPriceToDate());
				sellerProductPricing2.setStatus(sellerProductPricing.isStatus());
				listProductPricings.add(sellerProductPricing2);
		}
		if(!(flower.getAllProducts().getSellerDiscount().isEmpty())){
			for(SellerDiscount sellerDiscount:flower.getAllProducts().getSellerDiscount()){
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
		if(!(flower.getAllProducts().getFreeWith().isEmpty())){
			for(FreesProduct freesProduct : flower.getAllProducts().getFreeWith()){
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
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setFlower(flower);
		adminResponseClass.setListProductImagesVideos(listProductImages);
		adminResponseClass.setListProductPricings(listProductPricings);
		adminResponseClass.setListSellerDiscount(listSellerDiscounts);
		adminResponseClass.setListIntProductOccasion(listFlowerOccasions);
		adminResponseClass.setListFreesProducts(listFreesProducts);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllSellerProducts(SellerDetails sellerDetails) {
		/*boolean status = false;
		TypedQuery*/
		return null;
	}
}

