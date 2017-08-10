package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.ProductType;

public interface ProductTypeService {
	AdminResponseClass saveProductType(ProductType productType, String [] productValues);
	AdminResponseClass fetchAllProductTypes();
	AdminResponseClass fetchProductTypeById(long id);
	AdminResponseClass fetchProductTypesWithStatusByCat(String catName);
	AdminResponseClass fetchProductTypeByIdWithStatus(long id);
}
