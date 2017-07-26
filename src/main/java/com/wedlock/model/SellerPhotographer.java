package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;


@Entity
public class SellerPhotographer implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String productName;
	@Column(columnDefinition = "TEXT")
	private String photoDescription;
	private int noOfPhotosProvided;
	@Column(columnDefinition = "TEXT")
	private String videoDescription;
	private int videoLength;
	private boolean availability;
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	private double advancePaymentPercentage;
	@Column(columnDefinition = "TEXT")
	private String freebie;
	private boolean isActive;
	
	@ManyToOne
	private PhotographyType photographyType;
	
	@ManyToOne
	private PhotographyOccasion occasion;
	
	@ManyToOne
	private SellerDetails sellerDetails;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="sellerPhotographer",fetch = FetchType.LAZY)
	private List<SellerProductPricing> photographerProductPricing;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="sellerPhotographer",fetch = FetchType.LAZY)
	private List<Int_PhtographyType_SellerPhotographer> int_PhtographyType_SellerPhotographer;
	
	@OneToOne
	private AllProducts allProducts;
	
	//Setters And Getters
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getPhotoDescription() {
		return photoDescription;
	}

	public void setPhotoDescription(String photoDescription) {
		this.photoDescription = photoDescription;
	}

	public int getNoOfPhotosProvided() {
		return noOfPhotosProvided;
	}

	public void setNoOfPhotosProvided(int noOfPhotosProvided) {
		this.noOfPhotosProvided = noOfPhotosProvided;
	}

	public String getVideoDescription() {
		return videoDescription;
	}

	public void setVideoDescription(String videoDescription) {
		this.videoDescription = videoDescription;
	}

	public int getVideoLength() {
		return videoLength;
	}

	public void setVideoLength(int videoLength) {
		this.videoLength = videoLength;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public double getAdvancePaymentPercentage() {
		return advancePaymentPercentage;
	}

	public void setAdvancePaymentPercentage(double advancePaymentPercentage) {
		this.advancePaymentPercentage = advancePaymentPercentage;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public PhotographyType getPhotographyType() {
		return photographyType;
	}

	public void setPhotographyType(PhotographyType photographyType) {
		this.photographyType = photographyType;
	}

	public PhotographyOccasion getOccasion() {
		return occasion;
	}

	public void setOccasion(PhotographyOccasion occasion) {
		this.occasion = occasion;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public List<SellerProductPricing> getPhotographerProductPricing() {
		return photographerProductPricing;
	}

	public void setPhotographerProductPricing(List<SellerProductPricing> photographerProductPricing) {
		this.photographerProductPricing = photographerProductPricing;
	}

	public List<Int_PhtographyType_SellerPhotographer> getInt_PhtographyType_SellerPhotographer() {
		return int_PhtographyType_SellerPhotographer;
	}

	public void setInt_PhtographyType_SellerPhotographer(List<Int_PhtographyType_SellerPhotographer> int_PhtographyType_SellerPhotographer) {
		this.int_PhtographyType_SellerPhotographer = int_PhtographyType_SellerPhotographer;
	}

	public String getFreebie() {
		return freebie;
	}

	public void setFreebie(String freebie) {
		this.freebie = freebie;
	}

	public AllProducts getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}
	
	
}
