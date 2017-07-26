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
	
	@ManyToOne
	@JsonIgnore
	private CategoryAvailable categoryAvailable;
	
	@ManyToOne
	@JsonIgnore
	private SellerDetails sellerDetails;
	
	@OneToOne(mappedBy="allProducts")
	private SellerPhotographer sellerPhotographer;

	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerProductImagesVideos> sellerProductImagesVideos;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerProductPricing> sellerProductPricing;
	
	@OneToMany(mappedBy="allProducts")
	@JsonIgnore
	private List<SellerDiscount> sellerDiscount;
	
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
	
	

}
