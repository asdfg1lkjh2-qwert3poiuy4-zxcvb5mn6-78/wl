package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
public class Flower implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private String color;
	private String dpUrl;
	@Column(columnDefinition = "int(11) unsigned")
	private int noOfPieces;
	private boolean availability;
	@Column(columnDefinition = "bigint(20) unsigned")
	private long deliveryWithin;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	private String freebie;
	private boolean status;
	

	@ManyToOne
	// @JsonIgnore
	private ProductType productType;
	

	@OneToMany(mappedBy = "flower")
	private List<Int_Flow_Occ> int_Flow_Occs;

	// Setters And Getters

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDpUrl() {
		return dpUrl;
	}

	public void setDpUrl(String dpUrl) {
		this.dpUrl = dpUrl;
	}

	public int getNoOfPieces() {
		return noOfPieces;
	}

	public void setNoOfPieces(int noOfPieces) {
		this.noOfPieces = noOfPieces;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}

	public long getDeliveryWithin() {
		return deliveryWithin;
	}

	public void setDeliveryWithin(long deliveryWithin) {
		this.deliveryWithin = deliveryWithin;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public Date getUpdateTime() {
		return updateTime;
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

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public List<Int_Flow_Occ> getInt_Flow_Occs() {
		return int_Flow_Occs;
	}

	public void setInt_Flow_Occs(List<Int_Flow_Occ> int_Flow_Occs) {
		this.int_Flow_Occs = int_Flow_Occs;
	}

}
