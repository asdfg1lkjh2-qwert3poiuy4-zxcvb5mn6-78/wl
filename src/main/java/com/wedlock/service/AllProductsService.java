package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;

public interface AllProductsService {
	AdminResponseClass saveAllProducts(AllProducts products);
}
