package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class State implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String stateName;
	@Column(columnDefinition = "TEXT")
	private String stateDescription;
	
	@OneToMany(mappedBy="state")
	@JsonIgnore
	private List<City> cities;
	
	@OneToMany(mappedBy="state")
	@JsonIgnore
	private List<SellerDetails> sellerDetails;
	
	@Transient
	private long editStateId;
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

	public String getStateDescription() {
		return stateDescription;
	}
	public void setStateDescription(String stateDescription) {
		this.stateDescription = stateDescription;
	}
	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}
	public long getEditStateId() {
		return editStateId;
	}
	public void setEditStateId(long editStateId) {
		this.editStateId = editStateId;
	}
	
	
}