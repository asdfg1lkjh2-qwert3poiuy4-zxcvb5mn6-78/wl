package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDiscount;

public interface SellerDiscountService {
AdminResponseClass saveSellerDiscount(SellerDiscount sellerDiscount);
AdminResponseClass checkSellerDiscounts(SellerDiscount sellerDiscount);
}
