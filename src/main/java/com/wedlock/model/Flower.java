package com.wedlock.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.math.BigInteger;



@Entity
public class Flower implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String availability;

	private BigInteger categoryId;

	private String color;

	private int deliveryWithin;

	@Column(columnDefinition = "TEXT")
	private String description;

	private BigInteger discountId;

	@Temporal(TemporalType.DATE)
	private Date entryTime;

	private String freeBie;

	@Column(columnDefinition = "TEXT")
	private String image;

	private String name;

	private int noOfPieces;

	private int price;

	private String sellerId;

	private boolean status;
	
	/*@Transient
	private int typeId*/;
	
	@OneToOne
	private FlowerType flowerType;

	public FlowerType getFlowerType() {
		return flowerType;
	}

	public void setFlowerType(FlowerType flowerType) {
		this.flowerType = flowerType;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}


	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAvailability() {
		return this.availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public BigInteger getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(BigInteger categoryId) {
		this.categoryId = categoryId;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getDeliveryWithin() {
		return this.deliveryWithin;
	}

	public void setDeliveryWithin(int deliveryWithin) {
		this.deliveryWithin = deliveryWithin;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigInteger getDiscountId() {
		return this.discountId;
	}

	public void setDiscountId(BigInteger discountId) {
		this.discountId = discountId;
	}

	public Date getEntryTime() {
		return this.entryTime;
	}

	public void setEntryTime(Timestamp entryTime) {
		this.entryTime = entryTime;
	}

	public String getFreeBie() {
		return this.freeBie;
	}

	public void setFreeBie(String freeBie) {
		this.freeBie = freeBie;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNoOfPieces() {
		return this.noOfPieces;
	}

	public void setNoOfPieces(int noOfPieces) {
		this.noOfPieces = noOfPieces;
	}

	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSellerId() {
		return this.sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public boolean getStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	/*public int getTypeId() {
		return this.typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}*/

}