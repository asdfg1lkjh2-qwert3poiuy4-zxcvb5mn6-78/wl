package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class PhotographyOccasion implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String occasionName;
	@Column(columnDefinition = "TEXT")
	private String occasionDescription;
	private boolean status;
	
	@OneToMany(mappedBy="photographyOccasion")
	@JsonIgnore
	private List<SellerPhotographyOccasion> sellerPhotographyOccassion;
	
	@Transient
	private long editPhotographyOccasionId;
	@Transient
	private String otherOccasionDetails;
	@Transient
	private String photographyStatusSelect;
	
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getOccasionName() {
		return occasionName;
	}
	public void setOccasionName(String occasionName) {
		this.occasionName = occasionName;
	}
	public String getOccasionDescription() {
		return occasionDescription;
	}
	public void setOccasionDescription(String occasionDescription) {
		this.occasionDescription = occasionDescription;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public long getEditPhotographyOccasionId() {
		return editPhotographyOccasionId;
	}
	public void setEditPhotographyOccasionId(long editPhotographyOccasionId) {
		this.editPhotographyOccasionId = editPhotographyOccasionId;
	}
	public String getOtherOccasionDetails() {
		return otherOccasionDetails;
	}
	public void setOtherOccasionDetails(String otherOccasionDetails) {
		this.otherOccasionDetails = otherOccasionDetails;
	}
	public String getPhotographyStatusSelect() {
		return photographyStatusSelect;
	}
	public void setPhotographyStatusSelect(String photographyStatusSelect) {
		this.photographyStatusSelect = photographyStatusSelect;
	}
	

}
