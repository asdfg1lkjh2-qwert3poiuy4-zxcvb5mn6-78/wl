package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerProductImagesVideos;

public interface SellerProductImagesVideosService {
AdminResponseClass saveSellerProductImagesVideos(SellerProductImagesVideos sellerProductImagesVideos);
AdminResponseClass fetchSellerProductImagesVideosById(long id);
}
