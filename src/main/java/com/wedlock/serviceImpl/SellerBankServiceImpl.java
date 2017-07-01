package com.wedlock.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerBankDetailsDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.SellerBankDetailsService;

@Transactional
@Service
public class SellerBankServiceImpl implements SellerBankDetailsService{

	@Autowired
	private SellerBankDetailsDao sellerBankDetailsDao;
	@Autowired
	private SellerDao sellerDao;
	@Override
	public AdminResponseClass saveSellerBankDetails(SellerBankDetails sellerBankDetails) {
		boolean status = false;
		
		SellerDetails sellerDetails = sellerDao.findOne(sellerBankDetails.getSellerId());
		sellerBankDetails.setSellerDetails(sellerDetails);
		sellerBankDetailsDao.save(sellerBankDetails);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
