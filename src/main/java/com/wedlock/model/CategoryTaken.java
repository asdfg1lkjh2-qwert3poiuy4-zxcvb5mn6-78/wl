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

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class CategoryTaken implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable=false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	@Temporal(TemporalType.DATE)
	private Date startDate;
	@Temporal(TemporalType.DATE)
	private Date endDate;
	private boolean isAnnually;
	private boolean isPaid;
	private boolean status;
	
	@Transient
	private String paidService;

	@ManyToOne
	@JsonIgnore
	private SellerDetails sellerDetails;
	
	@ManyToOne
	private CategoryAvailable categoryAvailable;
	
	// Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public boolean isAnnually() {
		return isAnnually;
	}

	public void setAnnually(boolean isAnnually) {
		this.isAnnually = isAnnually;
	}

	public boolean isPaid() {
		return isPaid;
	}

	public void setPaid(boolean isPaid) {
		this.isPaid = isPaid;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
/*
	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}*/

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

	public String getPaidService() {
		return paidService;
	}

	public void setPaidService(String paidService) {
		this.paidService = paidService;
	}
}
