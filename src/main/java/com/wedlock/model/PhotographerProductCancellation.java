package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class PhotographerProductCancellation implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	private int daysHours;
	private double cancellationPercentage;
	private boolean isDays;
	private boolean status;
	
	@ManyToOne
	@JsonIgnore
	private SellerPhotographer sellerPhotographer;

	//Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getDaysHours() {
		return daysHours;
	}

	public void setDaysHours(int daysHours) {
		this.daysHours = daysHours;
	}

	public double getCancellationPercentage() {
		return cancellationPercentage;
	}

	public void setCancellationPercentage(double cancellationPercentage) {
		this.cancellationPercentage = cancellationPercentage;
	}

	public boolean isDays() {
		return isDays;
	}

	public void setDays(boolean isDays) {
		this.isDays = isDays;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
