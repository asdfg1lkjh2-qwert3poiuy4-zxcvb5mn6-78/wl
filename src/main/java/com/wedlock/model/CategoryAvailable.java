package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class CategoryAvailable implements Serializable{

private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	private long id;
	private String categoryName;
	@Column(columnDefinition = "TEXT")
	private String categoryDescription;
	private String categoryUrl;
	private String packageFor;
	private String iconFile;
	private double registrationCharge;
	private boolean isActive;
	
	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<SubCategoryAvailable> subCategoryAvailable;
	
	/*@OneToMany(mappedBy="categoryAvailable")
	private List<Flower> flower;
	@OneToMany(mappedBy="categoryAvailable")
	private List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable;*/
	
	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<SellerProductImagesVideos> sellerProductImagesVideos;
	
	@Transient
	private String allFiles;
	@Transient
	private long editCategoryId;
	
	
	public CategoryAvailable() {
		super();
	}
	public CategoryAvailable(long id,String categoryName) {
		super();
		this.id = id;
		this.categoryName = categoryName;
	}
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
	public String getAllFiles() {
		return allFiles;
	}
	public void setAllFiles(String allFiles) {
		this.allFiles = allFiles;
	}
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
	public String getCategoryUrl() {
		return categoryUrl;
	}
	public void setCategoryUrl(String categoryUrl) {
		this.categoryUrl = categoryUrl;
	}
	public List<SubCategoryAvailable> getSubCategoryAvailable() {
		return subCategoryAvailable;
	}
	public void setSubCategoryAvailable(List<SubCategoryAvailable> subCategoryAvailable) {
		this.subCategoryAvailable = subCategoryAvailable;
	}
	public long getEditCategoryId() {
		return editCategoryId;
	}
	public void setEditCategoryId(long editCategoryId) {
		this.editCategoryId = editCategoryId;
	}
	/*public List<Flower> getFlower() {
		return flower;
	}
	public void setFlower(List<Flower> flower) {
		this.flower = flower;
	}
	public List<Int_Vat_CategoryAvailable> getInt_Vat_CategoryAvailable() {
		return int_Vat_CategoryAvailable;
	}
	public void setInt_Vat_CategoryAvailable(List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable) {
		this.int_Vat_CategoryAvailable = int_Vat_CategoryAvailable;
	}*/
	public List<SellerProductImagesVideos> getSellerProductImagesVideos() {
		return sellerProductImagesVideos;
	}
	public void setSellerProductImagesVideos(List<SellerProductImagesVideos> sellerProductImagesVideos) {
		this.sellerProductImagesVideos = sellerProductImagesVideos;
	}
	
  
}
