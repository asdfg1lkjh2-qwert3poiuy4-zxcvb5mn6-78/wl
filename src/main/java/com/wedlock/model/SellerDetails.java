package com.wedlock.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
	private String sellerEmailId;
	private String sellerPassword;

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
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	@Temporal(TemporalType.DATE)
	private Date sellerRegistrationEnd;
	@Temporal(TemporalType.DATE)
	private Date sellerRegistrationStart;
	private String typeOfSeller;
	private boolean isEmailVerified;
	private boolean isMobileVerified;
	private boolean isActive;

	@Transient
	private long stateId;
	@Transient
	private long cityId;
	@Transient
	private long zipCodeId;
	@Transient
	private String addressProofFiles;
	@Transient
	private String idProofFiles;
	@Transient
	private String sellerImageFiles;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "sellerDetails",fetch = FetchType.LAZY)
	private List<CategoryTaken> serviceTaken;
	
	@OneToOne(mappedBy="sellerDetails")
	private SellerBankDetails sellerBankDetails;
	/*@OneToOne(mappedBy="sellerDetails")
	private Flower flower;*/
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="sellerDetails",fetch = FetchType.LAZY)
	private List<SellerInactiveDetails> sellerInactiveDetails;
	
	@ManyToOne
	@JsonIgnore
	private AdminDetails adminDetails;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "sellerDetails",fetch = FetchType.LAZY)
	private List<AllProducts> allProducts;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="sellerDetails",fetch=FetchType.LAZY)
	private List<SellerProductCancellation> sellerProductCancellation;
	
	@OneToOne(mappedBy = "sellerDetails")
	@JsonIgnore
	private Otp otp;
	
	@OneToMany(mappedBy = "sellerDetails")
	@JsonIgnore
	private List<Food> food;
	
	@Transient
	private String stateName;
	@Transient
	private String cityName;
	@Transient
	private String zipCodeName;
	@Transient
	private String zipCodeLocality;
	@Transient
	private String sellerDOB;
	
	@Transient
	private String editSellerId;
	
	//Setters And Getters
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

	public String getAddressProofFiles() {
		return addressProofFiles;
	}

	public void setAddressProofFiles(String addressProofFiles) {
		this.addressProofFiles = addressProofFiles;
	}

	public String getIdProofFiles() {
		return idProofFiles;
	}

	public void setIdProofFiles(String idProofFiles) {
		this.idProofFiles = idProofFiles;
	}

	public String getSellerImageFiles() {
		return sellerImageFiles;
	}

	public void setSellerImageFiles(String sellerImageFiles) {
		this.sellerImageFiles = sellerImageFiles;
	}

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public long getCityId() {
		return cityId;
	}

	public void setCityId(long cityId) {
		this.cityId = cityId;
	}

	public long getZipCodeId() {
		return zipCodeId;
	}

	public void setZipCodeId(long zipCodeId) {
		this.zipCodeId = zipCodeId;
	}

	public String getSellerEmailId() {
		return sellerEmailId;
	}

	public void setSellerEmailId(String sellerEmailId) {
		this.sellerEmailId = sellerEmailId;
	}

	public String getSellerPassword() {
		return sellerPassword;
	}

	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}

	/*public Flower getFlower() {
		return flower;
	}

	public void setFlower(Flower flower) {
		this.flower = flower;
	}*/

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getZipCodeName() {
		return zipCodeName;
	}

	public void setZipCodeName(String zipCodeName) {
		this.zipCodeName = zipCodeName;
	}

	public String getZipCodeLocality() {
		return zipCodeLocality;
	}

	public void setZipCodeLocality(String zipCodeLocality) {
		this.zipCodeLocality = zipCodeLocality;
	}

	public String getSellerDOB() {
		return sellerDOB;
	}

	public void setSellerDOB(String sellerDOB) {
		this.sellerDOB = sellerDOB;
	}

	public String getEditSellerId() {
		return editSellerId;
	}

	public void setEditSellerId(String editSellerId) {
		this.editSellerId = editSellerId;
	}

	public Date getSellerRegistrationEnd() {
		return sellerRegistrationEnd;
	}

	public void setSellerRegistrationEnd(Date sellerRegistrationEnd) {
		this.sellerRegistrationEnd = sellerRegistrationEnd;
	}

	public String getTypeOfSeller() {
		return typeOfSeller;
	}

	public void setTypeOfSeller(String typeOfSeller) {
		this.typeOfSeller = typeOfSeller;
	}

	public Date getSellerRegistrationStart() {
		return sellerRegistrationStart;
	}

	public void setSellerRegistrationStart(Date sellerRegistrationStart) {
		this.sellerRegistrationStart = sellerRegistrationStart;
	}

	public AdminDetails getAdminDetails() {
		return adminDetails;
	}

	public void setAdminDetails(AdminDetails adminDetails) {
		this.adminDetails = adminDetails;
	}

	public boolean isEmailVerified() {
		return isEmailVerified;
	}

	public void setEmailVerified(boolean isEmailVerified) {
		this.isEmailVerified = isEmailVerified;
	}

	public List<SellerInactiveDetails> getSellerInactiveDetails() {
		return sellerInactiveDetails;
	}

	public void setSellerInactiveDetails(List<SellerInactiveDetails> sellerInactiveDetails) {
		this.sellerInactiveDetails = sellerInactiveDetails;
	}

	public List<SellerProductCancellation> getSellerProductCancellation() {
		return sellerProductCancellation;
	}

	public void setSellerProductCancellation(List<SellerProductCancellation> sellerProductCancellation) {
		this.sellerProductCancellation = sellerProductCancellation;
	}

	public boolean isMobileVerified() {
		return isMobileVerified;
	}

	public void setMobileVerified(boolean isMobileVerified) {
		this.isMobileVerified = isMobileVerified;
	}

	public List<AllProducts> getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(List<AllProducts> allProducts) {
		this.allProducts = allProducts;
	}

	public Otp getOtp() {
		return otp;
	}

	public void setOtp(Otp otp) {
		this.otp = otp;
	}

	public List<Food> getFood() {
		return food;
	}

	public void setFood(List<Food> food) {
		this.food = food;
	}
}
