package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
public class FlowerType implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;
	private String name;
	@Column(columnDefinition = "TEXT")
	private String description;
	private boolean status;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date entryTime = new Date();
	@OneToMany(mappedBy = "flowerType")
	private List<Flower> flower;
	
	@Transient
	private long editId;

	// Setters And Getters
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

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<Flower> getFlower() {
		return flower;
	}

	public void setFlower(List<Flower> flower) {
		this.flower = flower;
	}

	public long getEditId() {
		return editId;
	}

	public void setEditId(long editId) {
		this.editId = editId;
	}

}
