package com.wedlock.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.security.NoSuchProviderException;
import java.text.ParseException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;

public interface SellerService {
	AdminResponseClass addEditSellerDetails(SellerDetails sellerDetails,String isEdit) throws ParseException;
	AdminResponseClass fetchAllSellers();
	AdminResponseClass checkSelleroginCredentials(SellerDetails sellerDetails) throws ParseException, MalformedURLException, JsonParseException, JsonMappingException, IOException, NoSuchProviderException;
	SellerDetails fetchSellerByEmailId(String emailId);
	AdminResponseClass findSellerByEmailAndContactNo(String email,String contactNo,String sellerId);
	AdminResponseClass fetchAllSellersById(String id);
	AdminResponseClass findLastSellerId ();
}
