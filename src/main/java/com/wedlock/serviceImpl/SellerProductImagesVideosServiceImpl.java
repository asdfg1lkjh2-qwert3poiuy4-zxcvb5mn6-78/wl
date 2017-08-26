package com.wedlock.serviceImpl;

import java.util.Date;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.SellerProductImagesVideosDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.service.SellerProductImagesVideosService;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class SellerProductImagesVideosServiceImpl implements SellerProductImagesVideosService{

	@Autowired
	private SellerProductImagesVideosDao sellerProductImagesVideosDao;
	@Override
	public AdminResponseClass saveSellerProductImagesVideos(SellerProductImagesVideos sellerProductImagesVideos) {
		System.out.println("//// Seller Product Images Id is"+sellerProductImagesVideos.getId());
		System.out.println("//// Product Images Url is"+sellerProductImagesVideos.getProductImageVideoUrl());
		boolean status = false;
		sellerProductImagesVideos.setEntryTime(new Date());
		sellerProductImagesVideos.setStatus(Boolean.TRUE);
		sellerProductImagesVideosDao.save(sellerProductImagesVideos);
		status = true;
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}
	@Override
	public AdminResponseClass fetchSellerProductImagesVideosById(long id) {
		boolean status = false;
		SellerProductImagesVideos sellerProductImageVideo = sellerProductImagesVideosDao.findOne(id);
		status = true;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setSellerProductImageVideo(sellerProductImageVideo);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
