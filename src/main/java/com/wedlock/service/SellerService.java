package com.wedlock.service;

import java.text.ParseException;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;

public interface SellerService {
	AdminResponseClass addEditSellerDetails(SellerDetails sellerDetails,String isEdit) throws ParseException;
	AdminResponseClass fetchAllSellers();
	SellerDetails fetchSellerByEmailId(String emailId);
	AdminResponseClass findSellerByEmailAndContactNo(String email,String contactNo,String sellerId);
	AdminResponseClass fetchAllSellersById(String id);
	AdminResponseClass findLastSellerId ();
}
