package com.wedlock.serviceImpl;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.SellerProductImagesVideosDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.service.SellerProductImagesVideosService;

@Transactional
@Service
public class SellerProductImagesVideosServiceImpl implements SellerProductImagesVideosService{

	@Autowired
	private SellerProductImagesVideosDao sellerProductImagesVideosDao;
	@Override
	public AdminResponseClass saveSellerProductImagesVideos(SellerProductImagesVideos sellerProductImagesVideos) {
		boolean status = false;
		sellerProductImagesVideos.setEntryTime(new Date());
		sellerProductImagesVideos.setStatus(Boolean.TRUE);
		sellerProductImagesVideosDao.save(sellerProductImagesVideos);
		status = true;
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
