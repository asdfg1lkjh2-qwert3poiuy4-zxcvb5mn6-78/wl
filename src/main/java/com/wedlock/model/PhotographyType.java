package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class PhotographyType implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	private String typeName;
	@Column(columnDefinition = "TEXT")
	private String typeDescription;
	private boolean status;
	
	@Transient
	private long editPhotographyTypeId;
	@Transient
	private String otherTypeDetails;
	@Transient
	private String photographyStatusSelect;
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getTypeDescription() {
		return typeDescription;
	}
	public void setTypeDescription(String typeDescription) {
		this.typeDescription = typeDescription;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public long getEditPhotographyTypeId() {
		return editPhotographyTypeId;
	}
	public void setEditPhotographyTypeId(long editPhotographyTypeId) {
		this.editPhotographyTypeId = editPhotographyTypeId;
	}
	public String getOtherTypeDetails() {
		return otherTypeDetails;
	}
	public void setOtherTypeDetails(String otherTypeDetails) {
		this.otherTypeDetails = otherTypeDetails;
	}
	public String getPhotographyStatusSelect() {
		return photographyStatusSelect;
	}
	public void setPhotographyStatusSelect(String photographyStatusSelect) {
		this.photographyStatusSelect = photographyStatusSelect;
	}

}
