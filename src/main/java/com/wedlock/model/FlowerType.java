package com.wedlock.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;
import java.util.List;

@Entity
public class FlowerType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private BigInteger discountId;

	private boolean status;

	private String description;

	private String name;

	@OneToMany(mappedBy="flowerType")
	private List<Flower> flower;
	
	@Transient
	private int editId;
	
	public List<Flower> getFlower() {
		return flower;
	}

	public void setFlower(List<Flower> flower) {
		this.flower = flower;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigInteger getDiscountId() {
		return this.discountId;
	}

	@Column(nullable = true)
	public void setDiscountId(BigInteger discountId) {
		this.discountId = discountId;
	}

	public boolean getStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEditId() {
		return editId;
	}

	public void setEditId(int editId) {
		this.editId = editId;
	}

}