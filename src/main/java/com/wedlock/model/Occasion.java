package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
public class Occasion implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private boolean status;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date entryTime = new Date();
	/*@OneToOne(mappedBy="flower")
	private Int_Flow_Occ int_Flow_Occ;   */   
	
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
	/*public Int_Flow_Occ getInt_Flow_Occ() {
		return int_Flow_Occ;
	}
	public void setInt_Flow_Occ(Int_Flow_Occ int_Flow_Occ) {
		this.int_Flow_Occ = int_Flow_Occ;
	}*/
	public long getEditId() {
		return editId;
	}
	public void setEditId(long editId) {
		this.editId = editId;
	}
	
	

}
