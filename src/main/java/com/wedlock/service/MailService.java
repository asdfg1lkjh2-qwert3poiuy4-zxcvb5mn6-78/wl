package com.wedlock.service;

import com.wedlock.model.SellerDetails;

public interface MailService {
	void sendEmailToSeller(SellerDetails sellerDetails,String check);
}
