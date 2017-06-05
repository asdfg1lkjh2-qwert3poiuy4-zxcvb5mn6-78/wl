package com.wedlock.model;

import java.util.List;

public class AdminResponseClass {

	private boolean status;
	
	/*For State*/
	private List<State> listAllStates;
	private State state;
	
	/*For City*/
	private List<City> listAllCities;
	private City city;
	
	/*For ZipCode*/
	private List<ZipCode> listAllZipCodes;
	private ZipCode zipCode;

	/*For Category Available*/
	private List<CategoryAvailable> categoryAvailables;
	private CategoryAvailable categoryAvailable;
	
	/*For Occasion*/
	private List<Occasion> occasions;
	private Occasion occasion;
	
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
	
}
