package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Occasion implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private boolean status;

	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable=false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;
	
	@OneToMany(mappedBy="occasion")
	@JsonIgnore
	private List<IntProductOccasion> intProductOcc;      
	
	@Transient
	private long editId;
	
	//Setters And Getters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public long getEditId() {
		return editId;
	}
	public void setEditId(long editId) {
		this.editId = editId;
	}
	public List<IntProductOccasion> getIntProductOcc() {
		return intProductOcc;
	}
	public void setIntProductOcc(List<IntProductOccasion> intProductOcc) {
		this.intProductOcc = intProductOcc;
	}
	
}
