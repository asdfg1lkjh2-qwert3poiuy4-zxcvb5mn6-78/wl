package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SellerPhotographyOccasion implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryTime;
	private boolean status;
	
	@ManyToOne
	private AllProducts allProducts;
	
	@ManyToOne
	private PhotographyOccasion photographyOccasion;
	
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
	public AllProducts getAllProducts() {
		return allProducts;
	}
	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}
	public PhotographyOccasion getPhotographyOccasion() {
		return photographyOccasion;
	}
	public void setPhotographyOccasion(PhotographyOccasion photographyOccasion) {
		this.photographyOccasion = photographyOccasion;
	}
	public SellerPhotographer getSellerPhotographer() {
		return sellerPhotographer;
	}
	public void setSellerPhotographer(SellerPhotographer sellerPhotographer) {
		this.sellerPhotographer = sellerPhotographer;
	}
	
}
