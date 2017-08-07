package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductPricing;

public interface SellerProductPricingService {
	AdminResponseClass saveSellerProductPricing(SellerProductPricing sellerProductPricing);
	AdminResponseClass checkSellerPricings(SellerProductPricing sellerProductPricing);
}
