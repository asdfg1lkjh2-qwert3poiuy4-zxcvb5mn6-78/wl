package com.wedlock.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class AllSellerCategory implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private long id;
	

}
