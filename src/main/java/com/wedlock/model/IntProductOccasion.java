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

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;



@Entity
public class IntProductOccasion implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	private boolean status;
	
	@ManyToOne
	private AllProducts allProducts;
	
	@ManyToOne
	private Occasion occasion;
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public AllProducts getAllProducts() {
		return allProducts;
	}
	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}
	public Occasion getOccasion() {
		return occasion;
	}
	public void setOccasion(Occasion occasion) {
		this.occasion = occasion;
	}
	
	
}