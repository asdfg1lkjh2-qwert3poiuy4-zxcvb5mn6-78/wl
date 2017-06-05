package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class State implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private long id;
	private String stateName;
	
	@OneToMany(mappedBy="state")
	private List<City> cities;
	
	@OneToOne(mappedBy="state")
	private SellerDetails sellerDetails;
	
	//Setters And Getters

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public List<City> getCities() {
		return cities;
	}
	public void setCities(List<City> cities) {
		this.cities = cities;
	}
	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}
	
	
}