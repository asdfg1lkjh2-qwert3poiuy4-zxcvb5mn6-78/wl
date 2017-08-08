package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;



@Entity
public class Int_Flow_Occ implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	
	@ManyToOne
	private Flower flower;
	
	@ManyToOne
	//@JsonIgnore
	private Occasion occasion;
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Flower getFlower() {
		return flower;
	}
	public void setFlower(Flower flower) {
		this.flower = flower;
	}
	public Occasion getOccasion() {
		return occasion;
	}
	public void setOccasion(Occasion occasion) {
		this.occasion = occasion;
	}
	
	
}