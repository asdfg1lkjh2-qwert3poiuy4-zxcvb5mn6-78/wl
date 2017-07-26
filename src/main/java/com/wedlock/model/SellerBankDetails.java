package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SellerBankDetails implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String accountHolderName;
	private String accountNumber;
	private String ifscCode;
	private String branchCode;
	private String branchName;
	
	@OneToOne
	@JsonIgnore
	private SellerDetails sellerDetails;

	@Transient 
	private String sellerId;
	@Transient
	private long editSellerBankDetailsId;
	//Setters And Getters
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAccountHolderName() {
		return accountHolderName;
	}

	public void setAccountHolderName(String accountHolderName) {
		this.accountHolderName = accountHolderName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public SellerDetails getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(SellerDetails sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public long getEditSellerBankDetailsId() {
		return editSellerBankDetailsId;
	}

	public void setEditSellerBankDetailsId(long editSellerBankDetailsId) {
		this.editSellerBankDetailsId = editSellerBankDetailsId;
	}

	


	
	
	

}
