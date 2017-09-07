package com.wedlock.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
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
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private int noOfPhotosProvided;
	@Column(columnDefinition = "TEXT")
	private String videoDescription;
	private int videoLength;
	private String availability;
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	private double advancePaymentPercentage;
	@Column(columnDefinition = "TEXT")
	private String freebie;
	private boolean isActive;
	
	@ManyToOne
	private PhotographyType photographyType;
	
	@OneToOne
	private AllProducts allProducts;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="sellerPhotographer",fetch=FetchType.LAZY)
	private List<SellerPhotographyOccasion> sellerPhotographyOccasions;
	
	//Setters And Getters
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public List<SellerPhotographyOccasion> getSellerPhotographyOccasions() {
		return sellerPhotographyOccasions;
	}

	public void setSellerPhotographyOccasions(List<SellerPhotographyOccasion> sellerPhotographyOccasions) {
		this.sellerPhotographyOccasions = sellerPhotographyOccasions;
	}
	
	
}
