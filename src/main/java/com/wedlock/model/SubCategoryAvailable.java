package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;



@Entity
public class SubCategoryAvailable implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String subCategoryName;
	@Column(columnDefinition = "TEXT")
	private String subCategoryDescription;
	private String subCategoryUrl;
	private boolean isActive;
	
	@ManyToOne
	private CategoryAvailable categoryAvailable;
	
	@Transient
	private long categoryId;
	@Transient
	private String otherSubCategoryDetails;
	@Transient
	private String categoryName;
	
	@Transient
	private long editId;
	
	//Setters And Getters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public String getSubCategoryDescription() {
		return subCategoryDescription;
	}

	public void setSubCategoryDescription(String subCategoryDescription) {
		this.subCategoryDescription = subCategoryDescription;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
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

	public String getOtherSubCategoryDetails() {
		return otherSubCategoryDetails;
	}

	public void setOtherSubCategoryDetails(String otherSubCategoryDetails) {
		this.otherSubCategoryDetails = otherSubCategoryDetails;
	}

	public String getSubCategoryUrl() {
		return subCategoryUrl;
	}

	public void setSubCategoryUrl(String subCategoryUrl) {
		this.subCategoryUrl = subCategoryUrl;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public long getEditId() {
		return editId;
	}

	public void setEditId(long editId) {
		this.editId = editId;
	}

	
	
}
