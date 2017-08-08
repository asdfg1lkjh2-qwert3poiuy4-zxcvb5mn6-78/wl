package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.jdo.annotations.Index;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;



@Entity
public class Otp implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private int otp;
	@Temporal(TemporalType.DATE)
	private Date sentDate;
	
	
	@OneToOne
	private SellerDetails sellerDetails;
	
	@Transient
	private String emailId;

	@Transient
	private String password;
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getOtp() {
		return otp;
	}
	public void setOtp(int otp) {
		this.otp = otp;
	}
	public Date getSentDate() {
		return sentDate;
	}
	public void setSentDate(Date sentDate) {
		this.sentDate = sentDate;
	}
	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
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

}
