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
public class SellerDiscount implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	@Temporal(TemporalType.DATE)
	private Date fromDateDiscount;
	@Temporal(TemporalType.DATE)
	private Date toDateDiscount;
	@Column(columnDefinition = "bigint(20) unsigned")
	private double discount;
	private boolean isFlatDiscount;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
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


	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public boolean isFlatDiscount() {
		return isFlatDiscount;
	}

	public void setFlatDiscount(boolean isFlatDiscount) {
		this.isFlatDiscount = isFlatDiscount;
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

	public Date getFromDateDiscount() {
		return fromDateDiscount;
	}

	public void setFromDateDiscount(Date fromDateDiscount) {
		this.fromDateDiscount = fromDateDiscount;
	}

	public Date getToDateDiscount() {
		return toDateDiscount;
	}

	public void setToDateDiscount(Date toDateDiscount) {
		this.toDateDiscount = toDateDiscount;
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
