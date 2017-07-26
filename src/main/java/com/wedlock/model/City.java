package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class City implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String cityName;
	@Column(columnDefinition = "TEXT")
	private String cityDescription;
	
	@ManyToOne
	private State state;
	
	@OneToMany(mappedBy="city")
	@JsonIgnore
	private List<ZipCode> zipCodes;
	
	@OneToMany(mappedBy="city")
	@JsonIgnore
	private List<SellerDetails> sellerDetails;
	
	@Transient
	private long stateId;
	@Transient
	private String otherCityDetails;
	@Transient
	private String stateName;
	@Transient
	private long editCityId;
	
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

	

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public String getOtherCityDetails() {
		return otherCityDetails;
	}

	public void setOtherCityDetails(String otherCityDetails) {
		this.otherCityDetails = otherCityDetails;
	}

	public String getCityDescription() {
		return cityDescription;
	}

	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}

	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public long getEditCityId() {
		return editCityId;
	}

	public void setEditCityId(long editCityId) {
		this.editCityId = editCityId;
	}

}
