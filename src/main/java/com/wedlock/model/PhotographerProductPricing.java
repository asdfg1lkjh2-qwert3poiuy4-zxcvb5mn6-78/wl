package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class PhotographerProductPricing implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	@Temporal(TemporalType.DATE)
	private Date priceFromDate;
	@Temporal(TemporalType.DATE)
	private Date priceToDate;
	private double price;
	private boolean status;
	
	@ManyToOne
	@JsonIgnore
	private SellerPhotographer sellerPhotographer;
	
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
	

}
