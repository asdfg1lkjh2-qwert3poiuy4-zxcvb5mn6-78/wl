package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Caterer;
import com.wedlock.model.SellerDetails;

public interface CatererService {
	AdminResponseClass findLastCatererId();
	AdminResponseClass saveCaterer(Caterer caterer);
	AdminResponseClass fetchAllCatererProductsBySellerId(SellerDetails sellerDetails);
	AdminResponseClass fetchCatererByCatererId(String id, String sellerId);
}
