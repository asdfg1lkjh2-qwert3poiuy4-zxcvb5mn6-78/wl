package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class CategoryAvailable implements Serializable{

private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String categoryName;
	@Column(columnDefinition = "TEXT")
	private String categoryDescription;
	private String categoryUrl;
	private boolean isHalfYearly;
	private double halfYearlyCharge;
	private boolean isAnnual;
	private double annualCharge;
	private String iconFile;
	private boolean isActive;
	
	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<SubCategoryAvailable> subCategoryAvailable;
	
	
	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable;


	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<AllProducts> allProducts;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="categoryAvailable",fetch = FetchType.LAZY)
	private List<SellerProductCancellation> sellerProductCancellation;

	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy="categoryAvailable",fetch = FetchType.LAZY)
	private List<ProductType> productType;
	
	@OneToMany(mappedBy="categoryAvailable")
	@JsonIgnore
	private List<CategoryTaken> categoryTaken;
	
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

	public String getIconFile() {
		return iconFile;
	}
	public void setIconFile(String iconFile) {
		this.iconFile = iconFile;
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
	public List<Int_Vat_CategoryAvailable> getInt_Vat_CategoryAvailable() {
		return int_Vat_CategoryAvailable;
	}
	public void setInt_Vat_CategoryAvailable(List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable) {
		this.int_Vat_CategoryAvailable = int_Vat_CategoryAvailable;
	}
	public List<SellerProductCancellation> getSellerProductCancellation() {
		return sellerProductCancellation;
	}
	public void setSellerProductCancellation(List<SellerProductCancellation> sellerProductCancellation) {
		this.sellerProductCancellation = sellerProductCancellation;
	}
	public List<AllProducts> getAllProducts() {
		return allProducts;
	}
	public void setAllProducts(List<AllProducts> allProducts) {
		this.allProducts = allProducts;
	}
	public List<CategoryTaken> getCategoryTaken() {
		return categoryTaken;
	}
	public void setCategoryTaken(List<CategoryTaken> categoryTaken) {
		this.categoryTaken = categoryTaken;
	}
	public boolean isHalfYearly() {
		return isHalfYearly;
	}
	public void setHalfYearly(boolean isHalfYearly) {
		this.isHalfYearly = isHalfYearly;
	}
	public double getHalfYearlyCharge() {
		return halfYearlyCharge;
	}
	public void setHalfYearlyCharge(double halfYearlyCharge) {
		this.halfYearlyCharge = halfYearlyCharge;
	}
	public boolean isAnnual() {
		return isAnnual;
	}
	public void setAnnual(boolean isAnnual) {
		this.isAnnual = isAnnual;
	}
	public double getAnnualCharge() {
		return annualCharge;
	}
	public void setAnnualCharge(double annualCharge) {
		this.annualCharge = annualCharge;
	}
	
}
