package com.wedlock.serviceImpl;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wedlock.dao.OtpDao;
import com.wedlock.dao.SellerDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Otp;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.OtpService;

@Transactional
@Service
public class OtpServiceImpl implements OtpService{

	@Autowired
	private OtpDao otpDao;
	@Autowired
	private SellerDao sellerDao;
	@PersistenceContext
	EntityManager manager;
	@Override
	public AdminResponseClass saveOtpForSeller(Otp otp) {
	  boolean status = false;
	  TypedQuery<Otp> typedQuery = manager.createQuery("Select o from Otp o where o.sellerDetails.id LIKE:id",Otp.class).setParameter("id", otp.getSellerDetails().getId());
	  if(!typedQuery.getResultList().isEmpty()){
		  otp.setId(typedQuery.getSingleResult().getId());
	  }
	  otp.setSentDate(new Date());
	  otpDao.save(otp);
	  status = true;
	  AdminResponseClass adminResponseClass = new AdminResponseClass();
	  adminResponseClass.setStatus(status);
	  return adminResponseClass;
	}
	@Override
	public AdminResponseClass checkOtpByEmailIdAndPassword(Otp otp) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		TypedQuery<Otp> typedQuery = manager.createQuery("Select o from Otp o where o.sellerDetails.sellerEmailId LIKE:sellerEmailId AND o.sellerDetails.sellerPassword LIKE:sellerPassword AND o.otp LIKE:otp",Otp.class).setParameter("sellerEmailId", otp.getEmailId()).setParameter("sellerPassword", otp.getPassword()).setParameter("otp", otp.getOtp());
		if(!typedQuery.getResultList().isEmpty()){
			 SellerDetails sellerDetails = sellerDao.findOne(typedQuery.getSingleResult().getSellerDetails().getId());
			 sellerDetails.setMobileVerified(Boolean.TRUE);
			 sellerDao.save(sellerDetails);
			 adminResponseClass.setSellerDetail(sellerDetails);
			 status = true;
		  }
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
