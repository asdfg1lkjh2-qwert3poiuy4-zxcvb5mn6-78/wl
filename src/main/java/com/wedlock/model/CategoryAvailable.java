package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;


@Entity
public class CategoryAvailable implements Serializable{

private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	private long id;
	private String categoryName;
	@Column(columnDefinition = "TEXT")
	private String categoryDescription;
	private String packageFor;
	private String iconFile;
	private double registrationCharge;
	private boolean isActive;
	
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getPackageFor() {
		return packageFor;
	}
	
	public String getIconFile() {
		return iconFile;
	}
	public void setIconFile(String iconFile) {
		this.iconFile = iconFile;
	}
	public void setPackageFor(String packageFor) {
		this.packageFor = packageFor;
	}
	public double getRegistrationCharge() {
		return registrationCharge;
	}
	public void setRegistrationCharge(double registrationCharge) {
		this.registrationCharge = registrationCharge;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	
  
}
