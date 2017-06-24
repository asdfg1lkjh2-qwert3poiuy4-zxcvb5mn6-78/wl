package com.wedlock.model;

public class TimeZone {
 private String countryCode;
 private String countryName;
 private String formatted;
 private String zoneName;
 private String status;
 
 
 //Setters And Getters
public String getCountryCode() {
	return countryCode;
}
public void setCountryCode(String countryCode) {
	this.countryCode = countryCode;
}
public String getCountryName() {
	return countryName;
}
public void setCountryName(String countryName) {
	this.countryName = countryName;
}
public String getFormatted() {
	return formatted;
}
public void setFormatted(String formatted) {
	this.formatted = formatted;
}
public String getZoneName() {
	return zoneName;
}
public void setZoneName(String zoneName) {
	this.zoneName = zoneName;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
}
