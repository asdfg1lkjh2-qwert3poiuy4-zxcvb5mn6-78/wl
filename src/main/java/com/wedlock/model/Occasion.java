package com.wedlock.model;

import java.io.Serializable;
import java.math.BigInteger;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Occasion implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String occasionName;
	private String occasionDesc;
	private boolean isActive;
	
	@OneToOne(mappedBy="flower")
	private Int_Flow_Occ int_Flow_Occ;
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getOccasionName() {
		return occasionName;
	}
	public void setOccasionName(String occasionName) {
		this.occasionName = occasionName;
	}
	public String getOccasionDesc() {
		return occasionDesc;
	}
	public void setOccasionDesc(String occasionDesc) {
		this.occasionDesc = occasionDesc;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public Int_Flow_Occ getInt_Flow_Occ() {
		return int_Flow_Occ;
	}
	public void setInt_Flow_Occ(Int_Flow_Occ int_Flow_Occ) {
		this.int_Flow_Occ = int_Flow_Occ;
	}
	
	

}
