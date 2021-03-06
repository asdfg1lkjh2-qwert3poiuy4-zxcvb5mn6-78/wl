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
public class Flower implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private String color;
	private String dpUrl;
	@Column(columnDefinition = "int(11) unsigned")
	private int noOfPieces;
	private boolean availability;
	
	/*@Column(columnDefinition = "bigint(20) unsigned")
	private long deliveryWithin;*/
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	private String freebie;
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

	public AllProducts getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDpUrl() {
		return dpUrl;
	}

	public void setDpUrl(String dpUrl) {
		this.dpUrl = dpUrl;
	}

	public int getNoOfPieces() {
		return noOfPieces;
	}

	public void setNoOfPieces(int noOfPieces) {
		this.noOfPieces = noOfPieces;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}

	/*public long getDeliveryWithin() {
		return deliveryWithin;
	}

	public void setDeliveryWithin(long deliveryWithin) {
		this.deliveryWithin = deliveryWithin;
	}*/

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
