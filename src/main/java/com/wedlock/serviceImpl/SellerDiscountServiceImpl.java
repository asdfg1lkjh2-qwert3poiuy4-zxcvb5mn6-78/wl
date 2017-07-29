package com.wedlock.serviceImpl;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerDiscountDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDiscount;
import com.wedlock.service.SellerDiscountService;

@Transactional
@Service
public class SellerDiscountServiceImpl implements SellerDiscountService{

	@Autowired
	private SellerDiscountDao sellerDiscountDao;
	@Override
	public AdminResponseClass saveSellerDiscount(SellerDiscount sellerDiscount) {
		boolean status = false;
		sellerDiscount.setEntryTime(new Date());
		sellerDiscount.setStatus(Boolean.TRUE);
		sellerDiscountDao.save(sellerDiscount);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
