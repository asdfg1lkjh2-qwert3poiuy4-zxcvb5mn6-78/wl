package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class AllProducts implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
	private boolean status;
	
	@ManyToOne
	private CategoryAvailable categoryAvailable;
	
	@ManyToOne
	@JsonIgnore
	private SellerDetails sellerDetails;
	
	@OneToOne(mappedBy="allProducts")
	@JsonIgnore
	private SellerPhotographer sellerPhotographer;
	
	@OneToMany(mappedBy = "allProducts")
	@JsonIgnore
	private List<IntProductOccasion> intProductOcc;
	
	@OneToOne(mappedBy="allProducts")
	@JsonIgnore
	private Flower flower;

	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerProductImagesVideos> sellerProductImagesVideos;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerProductPricing> sellerProductPricing;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerDiscount> sellerDiscount;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerPhotographyOccasion> sellerPhotographyOccasions;
	
	@OneToMany(mappedBy="withId")
	@JsonIgnore
	private List<FreesProduct> freeWith;
	
	@OneToMany(mappedBy="toId")
	@JsonIgnore
	private List<FreesProduct> freeTo;
	
	@OneToOne(mappedBy="allProducts")
	@JsonIgnore
	private Caterer caterer;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<FoodOfPackage> foodOfPackage;
	
	//Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public SellerPhotographer getSellerPhotographer() {
		return sellerPhotographer;
	}

	public List<IntProductOccasion> getIntProductOcc() {
		return intProductOcc;
	}

	public void setIntProductOcc(List<IntProductOccasion> intProductOcc) {
		this.intProductOcc = intProductOcc;
	}

	public Flower getFlower() {
		return flower;
	}

	public void setFlower(Flower flower) {
		this.flower = flower;
	}

	public void setSellerPhotographer(SellerPhotographer sellerPhotographer) {
		this.sellerPhotographer = sellerPhotographer;
	}

	public List<SellerProductImagesVideos> getSellerProductImagesVideos() {
		return sellerProductImagesVideos;
	}

	public void setSellerProductImagesVideos(List<SellerProductImagesVideos> sellerProductImagesVideos) {
		this.sellerProductImagesVideos = sellerProductImagesVideos;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public List<SellerProductPricing> getSellerProductPricing() {
		return sellerProductPricing;
	}

	public void setSellerProductPricing(List<SellerProductPricing> sellerProductPricing) {
		this.sellerProductPricing = sellerProductPricing;
	}

	public List<SellerDiscount> getSellerDiscount() {
		return sellerDiscount;
	}

	public void setSellerDiscount(List<SellerDiscount> sellerDiscount) {
		this.sellerDiscount = sellerDiscount;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<SellerPhotographyOccasion> getSellerPhotographyOccasions() {
		return sellerPhotographyOccasions;
	}

	public void setSellerPhotographyOccasions(List<SellerPhotographyOccasion> sellerPhotographyOccasions) {
		this.sellerPhotographyOccasions = sellerPhotographyOccasions;
	}

	public List<FreesProduct> getFreeTo() {
		return freeTo;
	}

	public void setFreeTo(List<FreesProduct> freeTo) {
		this.freeTo = freeTo;
	}

	public List<FreesProduct> getFreeWith() {
		return freeWith;
	}

	public void setFreeWith(List<FreesProduct> freeWith) {
		this.freeWith = freeWith;
	}

	public Caterer getCaterer() {
		return caterer;
	}

	public void setCaterer(Caterer caterer) {
		this.caterer = caterer;
	}

	public List<FoodOfPackage> getFoodOfPackage() {
		return foodOfPackage;
	}

	public void setFoodOfPackage(List<FoodOfPackage> foodOfPackage) {
		this.foodOfPackage = foodOfPackage;
	}
}
