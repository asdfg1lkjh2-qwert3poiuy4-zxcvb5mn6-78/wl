package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;

public interface SellerService {
	AdminResponseClass addEditSellerDetails(SellerDetails sellerDetails);
	AdminResponseClass fetchAllSellers();
	AdminResponseClass findLastSellerId ();
}
