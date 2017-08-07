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
import javax.persistence.Transient;


@Entity
public class SellerProductPricing implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	@Temporal(TemporalType.DATE)
	private Date priceFromDate;
	@Temporal(TemporalType.DATE)
	private Date priceToDate;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
	private double price;
	private boolean status;
	
	@ManyToOne
	private AllProducts allProducts;
	
	@Transient
	private Long allProductsId;
	
	//Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getPriceFromDate() {
		return priceFromDate;
	}

	public void setPriceFromDate(Date priceFromDate) {
		this.priceFromDate = priceFromDate;
	}

	public Date getPriceToDate() {
		return priceToDate;
	}

	public void setPriceToDate(Date priceToDate) {
		this.priceToDate = priceToDate;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public AllProducts getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}

	public Long getAllProductsId() {
		return allProductsId;
	}

	public void setAllProductsId(Long allProductsId) {
		this.allProductsId = allProductsId;
	}

}
