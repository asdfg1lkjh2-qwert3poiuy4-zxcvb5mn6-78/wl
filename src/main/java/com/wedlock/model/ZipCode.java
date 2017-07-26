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
public class ZipCode implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String zipCode;
	private String localityName;
	
	@ManyToOne
	private City city;

	@OneToMany(mappedBy = "zipCode")
	@JsonIgnore
	private List<SellerDetails> sellerDetails;
	
	@Transient
	private long cityId;
	
	@Transient
	private String otherZipCodeDetails;
	
	@Transient
	private String cityName;
	@Transient
	private String stateName;
	@Transient
	private long stateId;
	@Transient
	private long editZipCodeId;
	// Setters And Getters

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getZipCode() {
		return zipCode;
	}


	public String getLocalityName() {
		return localityName;
	}

	public void setLocalityName(String localityName) {
		this.localityName = localityName;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public long getCityId() {
		return cityId;
	}

	public void setCityId(long cityId) {
		this.cityId = cityId;
	}

	public String getOtherZipCodeDetails() {
		return otherZipCodeDetails;
	}

	public void setOtherZipCodeDetails(String otherZipCodeDetails) {
		this.otherZipCodeDetails = otherZipCodeDetails;
	}

	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public long getEditZipCodeId() {
		return editZipCodeId;
	}

	public void setEditZipCodeId(long editZipCodeId) {
		this.editZipCodeId = editZipCodeId;
	}
	

}
