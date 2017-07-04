package com.wedlock.model;

import java.util.List;

public class AdminResponseClass {

	private boolean status;
	private int countRows;
	private String lastId;
	private String mssgStatus;
	
	/*For State*/
	private List<State> listAllStates;
	private State state;
	
	/*For City*/
	private List<City> listAllCities;
	private City city;
	
	/*For ZipCode*/
	private List<ZipCode> listAllZipCodes;
	private ZipCode zipCode;

	/*For Flower Type*/
	private List<FlowerType> listAllFlowerType;
	private FlowerType flowerType;
	
	/*For Category Available*/
	private List<CategoryAvailable> categoryAvailables;
	private CategoryAvailable categoryAvailable;
	
	/*For Occasion*/
	private List<Occasion> occasions;
	private Occasion occasion;
	
	/*For Admin Details*/
	private List<AdminDetails> adminDetails;
	private AdminDetails adminDetail;
	
	/*For Sub Category Available*/
	private List<SubCategoryAvailable> subCategoryAvailables;
	private SubCategoryAvailable subCategoryAvailable;
	
	/*For Seller*/
	private List<SellerDetails> sellerDetails;
	private SellerDetails sellerDetail;
	
	// Setters And Getters

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<State> getListAllStates() {
		return listAllStates;
	}

	public void setListAllStates(List<State> listAllStates) {
		this.listAllStates = listAllStates;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public List<City> getListAllCities() {
		return listAllCities;
	}

	public void setListAllCities(List<City> listAllCities) {
		this.listAllCities = listAllCities;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public List<ZipCode> getListAllZipCodes() {
		return listAllZipCodes;
	}

	public void setListAllZipCodes(List<ZipCode> listAllZipCodes) {
		this.listAllZipCodes = listAllZipCodes;
	}

	public ZipCode getZipCode() {
		return zipCode;
	}

	public void setZipCode(ZipCode zipCode) {
		this.zipCode = zipCode;
	}

	public List<FlowerType> getListAllFlowerType() {
		return listAllFlowerType;
	}

	public void setListAllFlowerType(List<FlowerType> listAllFlowerType) {
		this.listAllFlowerType = listAllFlowerType;
	}

	public FlowerType getFlowerType() {
		return flowerType;
	}

	public void setFlowerType(FlowerType flowerType) {
		this.flowerType = flowerType;
	}

	public List<CategoryAvailable> getCategoryAvailables() {
		return categoryAvailables;
	}

	public void setCategoryAvailables(List<CategoryAvailable> categoryAvailables) {
		this.categoryAvailables = categoryAvailables;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public List<Occasion> getOccasions() {
		return occasions;
	}

	public void setOccasions(List<Occasion> occasions) {
		this.occasions = occasions;
	}

	public Occasion getOccasion() {
		return occasion;
	}

	public void setOccasion(Occasion occasion) {
		this.occasion = occasion;
	}

	public List<AdminDetails> getAdminDetails() {
		return adminDetails;
	}

	public void setAdminDetails(List<AdminDetails> adminDetails) {
		this.adminDetails = adminDetails;
	}

	public AdminDetails getAdminDetail() {
		return adminDetail;
	}

	public void setAdminDetail(AdminDetails adminDetail) {
		this.adminDetail = adminDetail;
	}

	public int getCountRows() {
		return countRows;
	}

	public void setCountRows(int countRows) {
		this.countRows = countRows;
	}

	public List<SubCategoryAvailable> getSubCategoryAvailables() {
		return subCategoryAvailables;
	}

	public void setSubCategoryAvailables(List<SubCategoryAvailable> subCategoryAvailables) {
		this.subCategoryAvailables = subCategoryAvailables;
	}

	public SubCategoryAvailable getSubCategoryAvailable() {
		return subCategoryAvailable;
	}

	public void setSubCategoryAvailable(SubCategoryAvailable subCategoryAvailable) {
		this.subCategoryAvailable = subCategoryAvailable;
	}

	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public SellerDetails getSellerDetail() {
		return sellerDetail;
	}

	public void setSellerDetail(SellerDetails sellerDetail) {
		this.sellerDetail = sellerDetail;
	}

	public String getLastId() {
		return lastId;
	}

	public void setLastId(String lastId) {
		this.lastId = lastId;
	}

	public String getMssgStatus() {
		return mssgStatus;
	}

	public void setMssgStatus(String mssgStatus) {
		this.mssgStatus = mssgStatus;
	}


}
