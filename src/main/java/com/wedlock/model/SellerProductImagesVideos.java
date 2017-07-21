package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class SellerProductImagesVideos implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	private String productImageVideoUrl;
	private boolean isPhotoVideo;
	@OneToOne
	private SellerDetails sellerDetails;
	@OneToOne
	private CategoryAvailable categoryAvailable;
	@OneToOne
	private SellerPhotographer product;
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getProductImageVideoUrl() {
		return productImageVideoUrl;
	}
	public void setProductImageVideoUrl(String productImageVideoUrl) {
		this.productImageVideoUrl = productImageVideoUrl;
	}
	public boolean isPhotoVideo() {
		return isPhotoVideo;
	}
	public void setPhotoVideo(boolean isPhotoVideo) {
		this.isPhotoVideo = isPhotoVideo;
	}
	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}
	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}
	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}
	public SellerPhotographer getProduct() {
		return product;
	}
	public void setProduct(SellerPhotographer product) {
		this.product = product;
	}
	
	
	
	
	

}
