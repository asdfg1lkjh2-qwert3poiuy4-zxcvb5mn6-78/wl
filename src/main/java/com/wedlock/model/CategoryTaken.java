package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class CategoryTaken implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;

	@ManyToOne
	private SellerDetails sellerDetails;
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	private boolean isActive;

	// Setters And Getters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	

}
