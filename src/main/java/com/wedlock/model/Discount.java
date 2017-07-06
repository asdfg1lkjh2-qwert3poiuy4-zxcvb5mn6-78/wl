package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Discount implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long id;
	private boolean isFlat;
	private double discountAmount;
	@Temporal(TemporalType.DATE)
	private Date entryTime;

	@OneToMany(mappedBy="discount")
	private List<Flower> flower;
	// Setters And Getters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public boolean isFlat() {
		return isFlat;
	}

	public void setFlat(boolean isFlat) {
		this.isFlat = isFlat;
	}

	public double getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(double discountAmount) {
		this.discountAmount = discountAmount;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public List<Flower> getFlower() {
		return flower;
	}

	public void setFlower(List<Flower> flower) {
		this.flower = flower;
	}

}
