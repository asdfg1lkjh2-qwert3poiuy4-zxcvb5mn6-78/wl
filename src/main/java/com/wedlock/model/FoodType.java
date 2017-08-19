package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class FoodType implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	private boolean status;

	
	@OneToMany(mappedBy="foodType")
	@JsonIgnore
	private List<Food> food;
	
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

	public Date getEntryTime() {
		return entryTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public List<Food> getFood() {
		return food;
	}

	public void setFood(List<Food> food) {
		this.food = food;
	}

}
