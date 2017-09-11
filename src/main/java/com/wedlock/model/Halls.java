package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;


@Entity
public class Halls implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private String dpUrl;
	@Column(columnDefinition = "int(11) unsigned default '0'")
	private int noOfBedRoom;
	@Column(columnDefinition = "int(11) unsigned default '0'")
	private int celebrationArea;
	@Column(columnDefinition = "int(11) unsigned default '0'")
	private int lawnArea;
	@Column(columnDefinition = "int(11) unsigned default '0'")
	private int eatingSeatCapacity;
	@Column(columnDefinition = "int(11) unsigned default '0'")
	private int noOfWashRoom;
	@Column(columnDefinition="tinyint(1) default 0")
	private boolean separateKitchen;
	@Column(columnDefinition="tinyint(1) default 0")
	private boolean separateStoreRoom;
	@Column(columnDefinition="tinyint(1) default 0")
	private boolean crackerAllowed;
	@Column(columnDefinition="tinyint(1) default 0")
	private boolean hasWifi;
	@Column(columnDefinition="tinyint(1) default 0")
	private boolean hasParking;
	private boolean availability;
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	private String freebie;
	@Column(columnDefinition="tinyint(1) default 1")
	private boolean status;
	private double advancePaymentPercentage;
	
	@OneToOne
	private AllProducts allProducts;
	
	@ManyToOne
	// @JsonIgnore
	private ProductType productType;
	
	@Transient
	private long allProductId;

	
	// Setters And Getters
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

	public String getDpUrl() {
		return dpUrl;
	}

	public void setDpUrl(String dpUrl) {
		this.dpUrl = dpUrl;
	}

	public int getNoOfBedRoom() {
		return noOfBedRoom;
	}

	public void setNoOfBedRoom(int noOfBedRoom) {
		this.noOfBedRoom = noOfBedRoom;
	}

	public int getCelebrationArea() {
		return celebrationArea;
	}

	public void setCelebrationArea(int celebrationArea) {
		this.celebrationArea = celebrationArea;
	}

	public int getLawnArea() {
		return lawnArea;
	}

	public void setLawnArea(int lawnArea) {
		this.lawnArea = lawnArea;
	}

	public int getEatingSeatCapacity() {
		return eatingSeatCapacity;
	}

	public void setEatingSeatCapacity(int eatingSeatCapacity) {
		this.eatingSeatCapacity = eatingSeatCapacity;
	}

	public int getNoOfWashRoom() {
		return noOfWashRoom;
	}

	public void setNoOfWashRoom(int noOfWashRoom) {
		this.noOfWashRoom = noOfWashRoom;
	}

	public boolean isSeparateKitchen() {
		return separateKitchen;
	}

	public void setSeparateKitchen(boolean separateKitchen) {
		this.separateKitchen = separateKitchen;
	}

	public boolean isSeparateStoreRoom() {
		return separateStoreRoom;
	}

	public void setSeparateStoreRoom(boolean separateStoreRoom) {
		this.separateStoreRoom = separateStoreRoom;
	}

	public boolean isCrackerAllowed() {
		return crackerAllowed;
	}

	public void setCrackerAllowed(boolean crackerAllowed) {
		this.crackerAllowed = crackerAllowed;
	}

	public boolean isHasWifi() {
		return hasWifi;
	}

	public void setHasWifi(boolean hasWifi) {
		this.hasWifi = hasWifi;
	}

	public boolean isHasParking() {
		return hasParking;
	}

	public void setHasParking(boolean hasParking) {
		this.hasParking = hasParking;
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

	public Date getUpdateTime() {
		return updateTime;
	}

	public String getFreebie() {
		return freebie;
	}

	public void setFreebie(String freebie) {
		this.freebie = freebie;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public double getAdvancePaymentPercentage() {
		return advancePaymentPercentage;
	}

	public void setAdvancePaymentPercentage(double advancePaymentPercentage) {
		this.advancePaymentPercentage = advancePaymentPercentage;
	}

	public AllProducts getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public long getAllProductId() {
		return allProductId;
	}

	public void setAllProductId(long allProductId) {
		this.allProductId = allProductId;
	}

}
