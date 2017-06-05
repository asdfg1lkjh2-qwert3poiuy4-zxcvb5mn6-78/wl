package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

@Entity
public class City implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private long id;
	private String cityName;
	
	@ManyToOne
	private State state;
	
	@OneToMany(mappedBy="city")
	private List<ZipCode> zipCodes;
	
	@OneToOne(mappedBy="city")
	private SellerDetails sellerDetails;
	
	@Transient
	private long stateId;
	
	
	//Setters And Getters

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCityName() {
		return cityName;
	}


	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public List<ZipCode> getZipCodes() {
		return zipCodes;
	}

	public void setZipCodes(List<ZipCode> zipCodes) {
		this.zipCodes = zipCodes;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	
	
}
