package com.wedlock.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Food {
 @Id@GeneratedValue
 @Column(columnDefinition = "bigint(20) unsigned")
 private long id;
 private String name;
 private boolean isVeg;
 private double price;
 private String description;
 @Temporal(TemporalType.TIMESTAMP)
 private Date entryTime;
 private boolean isActive;

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
public boolean isVeg() {
	return isVeg;
}
public void setVeg(boolean isVeg) {
	this.isVeg = isVeg;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Date getEntryTime() {
	return entryTime;
}
public void setEntryTime(Date entryTime) {
	this.entryTime = entryTime;
}
public boolean isActive() {
	return isActive;
}
public void setActive(boolean isActive) {
	this.isActive = isActive;
}
 
}
