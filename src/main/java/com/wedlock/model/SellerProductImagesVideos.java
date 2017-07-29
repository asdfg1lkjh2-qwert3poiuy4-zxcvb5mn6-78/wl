package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class SellerProductImagesVideos implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String productImageVideoUrl;
	private boolean isPhotoVideo;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
	private boolean status;
	
	@ManyToOne
	private AllProducts allProducts;
	
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
	public AllProducts getAllProducts() {
		return allProducts;
	}
	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
	
	
	

}
