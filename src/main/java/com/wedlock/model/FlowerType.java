package com.wedlock.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class FlowerType {

	@Id @GeneratedValue
	private long id;
	private String name;
	@Column(columnDefinition="TEXT")
	private String description;
	private boolean status;
	
	@OneToMany(mappedBy="flowerType")
	private List<Flower> flower;
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public List<Flower> getFlower() {
		return flower;
	}
	public void setFlower(List<Flower> flower) {
		this.flower = flower;
	}
	
	
}
