package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class SellerDetails implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;
	private String sellerFirstName;
	private String sellerLastName;
	private String sellerContactNumber;
	private String sellerAlternateNumber;
	
	@Column(columnDefinition = "TEXT")
	private String sellerPresentAddress;
	@Column(columnDefinition = "TEXT")
	private String sellerPermanentAddress;

	@OneToOne
	private State state;
	@OneToOne
	private City city;
	@OneToOne
	private ZipCode zipCode;

	@Temporal(TemporalType.DATE)
	private Date sellerDateOfBirth;
	private String sellerGender;
	private String sellerCompanyName;
	private String sellerAddressProof;
	private String sellerAddressProofImg;
	private String sellerIdProof;
	private String sellerIdProofImg;
	private String sellerImg;

	@OneToMany(mappedBy = "sellerDetails")
	private List<CategoryTaken> serviceTaken;
	
	@OneToOne(mappedBy="sellerDetails")
	private SellerBankDetails sellerBankDetails;
	
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	private boolean isActive;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSellerFirstName() {
		return sellerFirstName;
	}

	public void setSellerFirstName(String sellerFirstName) {
		this.sellerFirstName = sellerFirstName;
	}

	public String getSellerLastName() {
		return sellerLastName;
	}

	public void setSellerLastName(String sellerLastName) {
		this.sellerLastName = sellerLastName;
	}

	public String getSellerContactNumber() {
		return sellerContactNumber;
	}

	public void setSellerContactNumber(String sellerContactNumber) {
		this.sellerContactNumber = sellerContactNumber;
	}

	public String getSellerAlternateNumber() {
		return sellerAlternateNumber;
	}

	public void setSellerAlternateNumber(String sellerAlternateNumber) {
		this.sellerAlternateNumber = sellerAlternateNumber;
	}

	public String getSellerPresentAddress() {
		return sellerPresentAddress;
	}

	public void setSellerPresentAddress(String sellerPresentAddress) {
		this.sellerPresentAddress = sellerPresentAddress;
	}

	public String getSellerPermanentAddress() {
		return sellerPermanentAddress;
	}

	public void setSellerPermanentAddress(String sellerPermanentAddress) {
		this.sellerPermanentAddress = sellerPermanentAddress;
	}

	public Date getSellerDateOfBirth() {
		return sellerDateOfBirth;
	}

	public void setSellerDateOfBirth(Date sellerDateOfBirth) {
		this.sellerDateOfBirth = sellerDateOfBirth;
	}

	public String getSellerGender() {
		return sellerGender;
	}

	public void setSellerGender(String sellerGender) {
		this.sellerGender = sellerGender;
	}

	public String getSellerCompanyName() {
		return sellerCompanyName;
	}

	public void setSellerCompanyName(String sellerCompanyName) {
		this.sellerCompanyName = sellerCompanyName;
	}

	public String getSellerAddressProof() {
		return sellerAddressProof;
	}

	public void setSellerAddressProof(String sellerAddressProof) {
		this.sellerAddressProof = sellerAddressProof;
	}

	public String getSellerAddressProofImg() {
		return sellerAddressProofImg;
	}

	public void setSellerAddressProofImg(String sellerAddressProofImg) {
		this.sellerAddressProofImg = sellerAddressProofImg;
	}

	public String getSellerIdProof() {
		return sellerIdProof;
	}

	public void setSellerIdProof(String sellerIdProof) {
		this.sellerIdProof = sellerIdProof;
	}

	public String getSellerIdProofImg() {
		return sellerIdProofImg;
	}

	public void setSellerIdProofImg(String sellerIdProofImg) {
		this.sellerIdProofImg = sellerIdProofImg;
	}

	public String getSellerImg() {
		return sellerImg;
	}

	public void setSellerImg(String sellerImg) {
		this.sellerImg = sellerImg;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public ZipCode getZipCode() {
		return zipCode;
	}

	public void setZipCode(ZipCode zipCode) {
		this.zipCode = zipCode;
	}

	public List<CategoryTaken> getServiceTaken() {
		return serviceTaken;
	}

	public void setServiceTaken(List<CategoryTaken> serviceTaken) {
		this.serviceTaken = serviceTaken;
	}

	public SellerBankDetails getSellerBankDetails() {
		return sellerBankDetails;
	}

	public void setSellerBankDetails(SellerBankDetails sellerBankDetails) {
		this.sellerBankDetails = sellerBankDetails;
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
