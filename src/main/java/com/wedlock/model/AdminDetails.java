package com.wedlock.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;


@Entity
public class AdminDetails implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String alternateNumber;
	private String emailId;
	private String password;
	private String ipAddress;
	private String imageName;
	private boolean isActive;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy ="adminDetails",fetch=FetchType.LAZY)
	private List<SellerInactiveDetails> sellerInactiveDetails;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="adminDetails",fetch=FetchType.LAZY)
	private List<SellerDetails> sellerDetails;
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAlternateNumber() {
		return alternateNumber;
	}
	public void setAlternateNumber(String alternateNumber) {
		this.alternateNumber = alternateNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	/*public List<SellerInactiveDetails> getSellerInactiveDetails() {
		return sellerInactiveDetails;
	}
	public void setSellerInactiveDetails(List<SellerInactiveDetails> sellerInactiveDetails) {
		this.sellerInactiveDetails = sellerInactiveDetails;
	}*/
	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

}
