package com.wedlock.model;

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
public class Flower {

	@Id
	private String id;
	private String flowerName;
	@Column(columnDefinition = "TEXT")
	private String flowerDescription;
	private double flowerPrice;
	private String flowerColor;
	private String flowerImageUrl;
	private int noOfPieces;
	private boolean flowerAvailability;
	@Temporal(TemporalType.DATE)
	private Date deliveryDate;
	@Temporal(TemporalType.DATE)
	private Date entryTime;
	private String freebie;
	private boolean status;
	
	@OneToOne
	private CategoryAvailable categoryAvailable;
	
	@OneToOne
	private SellerDetails sellerDetails;
	@OneToOne
	private FlowerType flowerType;
	
	@OneToOne
	private Discount discount;
	@OneToMany(mappedBy="flower")
	private List<Int_Flow_Occ> int_Flow_Occs;
	
	//Setters And Getters
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public FlowerType getFlowerType() {
		return flowerType;
	}
	public void setFlowerType(FlowerType flowerType) {
		this.flowerType = flowerType;
	}
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}
	public String getFlowerDescription() {
		return flowerDescription;
	}
	public void setFlowerDescription(String flowerDescription) {
		this.flowerDescription = flowerDescription;
	}
	public double getFlowerPrice() {
		return flowerPrice;
	}
	public void setFlowerPrice(double flowerPrice) {
		this.flowerPrice = flowerPrice;
	}
	public String getFlowerColor() {
		return flowerColor;
	}
	public void setFlowerColor(String flowerColor) {
		this.flowerColor = flowerColor;
	}
	public String getFlowerImageUrl() {
		return flowerImageUrl;
	}
	public void setFlowerImageUrl(String flowerImageUrl) {
		this.flowerImageUrl = flowerImageUrl;
	}
	public int getNoOfPieces() {
		return noOfPieces;
	}
	public void setNoOfPieces(int noOfPieces) {
		this.noOfPieces = noOfPieces;
	}
	public boolean isFlowerAvailability() {
		return flowerAvailability;
	}
	public void setFlowerAvailability(boolean flowerAvailability) {
		this.flowerAvailability = flowerAvailability;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	public String getFreebie() {
		return freebie;
	}
	public void setFreebie(String freebie) {
		this.freebie = freebie;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}
	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}
	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}
	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}
	public Discount getDiscount() {
		return discount;
	}
	public void setDiscount(Discount discount) {
		this.discount = discount;
	}
	public List<Int_Flow_Occ> getInt_Flow_Occs() {
		return int_Flow_Occs;
	}
	public void setInt_Flow_Occs(List<Int_Flow_Occ> int_Flow_Occs) {
		this.int_Flow_Occs = int_Flow_Occs;
	}
	
}


