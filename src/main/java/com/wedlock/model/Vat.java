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
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
public class Vat implements Serializable{
 
 private static final long serialVersionUID = 1L;
 @Id @GeneratedValue
 @Column(columnDefinition = "bigint(20) unsigned")
 private long id; 
 private String vatName;
 private double vatAmount;
 private boolean status;
 @Temporal(TemporalType.TIMESTAMP)
 private Date entryTime;
 
 @LazyCollection(LazyCollectionOption.FALSE)
 @OneToMany(mappedBy="vat",fetch=FetchType.LAZY)
 private List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable;
 
 //Setters And Getters
public String getVatName() {
	return vatName;
}
public void setVatName(String vatName) {
	this.vatName = vatName;
}
public double getVatAmount() {
	return vatAmount;
}
public void setVatAmount(double vatAmount) {
	this.vatAmount = vatAmount;
}
public boolean isStatus() {
	return status;
}
public void setStatus(boolean status) {
	this.status = status;
}
public List<Int_Vat_CategoryAvailable> getInt_Vat_CategoryAvailable() {
	return int_Vat_CategoryAvailable;
}
public void setInt_Vat_CategoryAvailable(List<Int_Vat_CategoryAvailable> int_Vat_CategoryAvailable) {
	this.int_Vat_CategoryAvailable = int_Vat_CategoryAvailable;
}
public Date getEntryTime() {
	return entryTime;
}
public void setEntryTime(Date entryTime) {
	this.entryTime = entryTime;
}

}
