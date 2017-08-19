package com.wedlock.model;

public class GeneralProduct 
{
	private long allProductId;
	private String specificId;
	private String name;
	
	
	public long getAllProductId() {
		return allProductId;
	}
	public void setAllProductId(long allProductId) {
		this.allProductId = allProductId;
	}
	public String getSpecificId() {
		return specificId;
	}
	public void setSpecificId(String specificId) {
		this.specificId = specificId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
}
