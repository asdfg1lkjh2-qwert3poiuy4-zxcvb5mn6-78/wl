package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Int_PhtographyType_SellerPhotographer implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	
	@ManyToOne
	@JsonIgnore
	private PhotographyType photographyType;
	
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
	public PhotographyType getPhotographyType() {
		return photographyType;
	}
	public void setPhotographyType(PhotographyType photographyType) {
		this.photographyType = photographyType;
	}
	public SellerPhotographer getSellerPhotographer() {
		return sellerPhotographer;
	}
	public void setSellerPhotographer(SellerPhotographer sellerPhotographer) {
		this.sellerPhotographer = sellerPhotographer;
	}
	
}
