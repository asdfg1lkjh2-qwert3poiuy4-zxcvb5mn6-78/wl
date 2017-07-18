package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerInactiveDetails;

public interface SellerInactiveService {
	AdminResponseClass saveSellerInactive(SellerInactiveDetails sellerInactiveDetails,String isActive);
}
