package com.wedlock.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class ProductType implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String typeName;
	@Column(columnDefinition = "TEXT")
	private String typeDescription;
	private boolean status;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable=false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	//@Column(nullable = false)
	private Date updateTime;

	/*@PrePersist
	protected void onCreate() {
		entryTime = new Date();
		updateTime = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		updateTime = new Date();
	}*/

	@ManyToOne
	//@JsonIgnore
	private CategoryAvailable categoryAvailable;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="productType",fetch=FetchType.LAZY)
	@JsonIgnore
	private List<Flower> flower = new ArrayList<>();

	/*@LazyCollection(LazyCollectionOption.FALSE)*/
	@OneToMany(mappedBy="productType",fetch=FetchType.LAZY)
	@JsonIgnore
	private List<Caterer> caterer = new ArrayList<>();
	
	@Transient
	private long editTypeId;
	@Transient
	private String otherTypeDetails;
	@Transient
	private String statusSelect;
	@Transient
	private long categoryId;
	/*@Transient
	private String categoryName;*/

	// Setters And Getters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeDescription() {
		return typeDescription;
	}

	public void setTypeDescription(String typeDescription) {
		this.typeDescription = typeDescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getOtherTypeDetails() {
		return otherTypeDetails;
	}

	public void setOtherTypeDetails(String otherTypeDetails) {
		this.otherTypeDetails = otherTypeDetails;
	}

	/*public List<SellerPhotographer> getSellerPhotographer() {
		return sellerPhotographer;
	}

	public void setSellerPhotographer(List<SellerPhotographer> sellerPhotographer) {
		this.sellerPhotographer = sellerPhotographer;
	}

	public List<Int_PhtographyType_SellerPhotographer> getInt_PhotographyType_SellerPhotographer() {
		return int_PhotographyType_SellerPhotographer;
	}

	public void setInt_PhotographyType_SellerPhotographer(
			List<Int_PhtographyType_SellerPhotographer> int_PhotographyType_SellerPhotographer) {
		this.int_PhotographyType_SellerPhotographer = int_PhotographyType_SellerPhotographer;
	}*/

	public Date getEntryTime() {
		return entryTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public long getEditTypeId() {
		return editTypeId;
	}

	public void setEditTypeId(long editTypeId) {
		this.editTypeId = editTypeId;
	}

	public String getStatusSelect() {
		return statusSelect;
	}

	public void setStatusSelect(String statusSelect) {
		this.statusSelect = statusSelect;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	/*public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}*/
}
