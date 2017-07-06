package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Int_Vat_CategoryAvailable implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long id;

	@ManyToOne
	private CategoryAvailable categoryAvailable;
	@ManyToOne
	private Vat vat;

	// Setters And Getters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public Vat getVat() {
		return vat;
	}

	public void setVat(Vat vat) {
		this.vat = vat;
	}

}
