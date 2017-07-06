package com.wedlock.model;

import java.io.Serializable;


import javax.persistence.*;


@Entity
public class Int_Flow_Occ implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id@GeneratedValue
	private long id;
	@OneToOne
	private Flower flower;
	@OneToOne
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