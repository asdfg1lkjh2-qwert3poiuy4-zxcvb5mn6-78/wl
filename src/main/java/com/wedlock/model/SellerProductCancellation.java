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

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SellerProductCancellation implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private long withinHours;
	private double cancellationPercentage;
	private boolean status;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
	
	@ManyToOne
	@JsonIgnore
	private SellerDetails sellerDetails;
	
	@ManyToOne
	@JsonIgnore
	private CategoryAvailable categoryAvailable;
	
	//Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getCancellationPercentage() {
		return cancellationPercentage;
	}

	public void setCancellationPercentage(double cancellationPercentage) {
		this.cancellationPercentage = cancellationPercentage;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public long getWithinHours() {
		return withinHours;
	}

	public void setWithinHours(long withinHours) {
		this.withinHours = withinHours;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	
	
	
}
