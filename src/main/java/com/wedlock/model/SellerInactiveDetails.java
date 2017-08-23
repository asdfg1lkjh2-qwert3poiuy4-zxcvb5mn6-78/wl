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

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SellerInactiveDetails implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String inactiveReason;
	@Temporal(TemporalType.DATE)
	private Date dateOfInactivity;
	private boolean isActive;
	
	@ManyToOne
	@JsonIgnore
	private SellerDetails sellerDetails;
	
	@ManyToOne
	@JsonIgnore
	private AdminDetails adminDetails;

	@Transient
	private String sellerId;
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getInactiveReason() {
		return inactiveReason;
	}

	public void setInactiveReason(String inactiveReason) {
		this.inactiveReason = inactiveReason;
	}

	public Date getDateOfInactivity() {
		return dateOfInactivity;
	}

	public void setDateOfInactivity(Date dateOfInactivity) {
		this.dateOfInactivity = dateOfInactivity;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public AdminDetails getAdminDetails() {
		return adminDetails;
	}

	public void setAdminDetails(AdminDetails adminDetails) {
		this.adminDetails = adminDetails;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
}
