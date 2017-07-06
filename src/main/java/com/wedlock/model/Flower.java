package com.wedlock.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Flower {

	@Id
	private String id;
	@OneToOne
	private FlowerType flowerType;
	
	//Setters And Getters
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public FlowerType getFlowerType() {
		return flowerType;
	}
	public void setFlowerType(FlowerType flowerType) {
		this.flowerType = flowerType;
	}
	
}
