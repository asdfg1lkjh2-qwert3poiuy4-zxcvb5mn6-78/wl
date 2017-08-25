package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Caterer;

public interface CatererService {
	AdminResponseClass findLastCatererId();
	AdminResponseClass saveCaterer(Caterer caterer);
	/*AdminResponseClass fetchAllSellerProducts(SellerDetails sellerDetails);
    AdminResponseClass fetchAllFlowerProductsById(SellerDetails sellerDetails) throws ParseException;
	AdminResponseClass fetchAllFlowerById(String sellerId, String allProductId, String flowerId);
	AdminResponseClass fetchFlowerByFlowerId(String id);*/
	

}
