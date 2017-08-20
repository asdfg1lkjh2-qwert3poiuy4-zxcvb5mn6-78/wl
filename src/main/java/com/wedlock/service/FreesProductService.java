package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.SellerDetails;

public interface FreesProductService {
	AdminResponseClass saveFreesProduct(FreesProduct freesProduct);
	AdminResponseClass fetchAllProductBySellerId(SellerDetails details);
}
