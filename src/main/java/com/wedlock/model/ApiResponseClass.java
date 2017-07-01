package com.wedlock.model;

public class ApiResponseClass {
	/*TimeZone Db*/ 
	 private String countryCode;
	 private String countryName;
	 private String formatted;
	 private String zoneName;
	 private String status;
	 
	 /*For Sms Api*/
	 private String message;
	 private int total_sms;
	 
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getTotal_sms() {
		return total_sms;
	}
	public void setTotal_sms(int total_sms) {
		this.total_sms = total_sms;
	}
	 
	 
	 
}
