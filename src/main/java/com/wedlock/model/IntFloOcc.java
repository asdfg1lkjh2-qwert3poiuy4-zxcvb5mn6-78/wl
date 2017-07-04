package com.wedlock.model;

import java.io.Serializable;
import java.math.BigInteger;

import javax.persistence.*;


@Entity
public class IntFloOcc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private BigInteger id;

	@Column(nullable=false, length=255)
	private String flowerId;

	@Column(nullable=false, length=255)
	private String occasionName;

	@Column(nullable=false, length=255)
	private String sellerId;
	

	public BigInteger getId() {
		return this.id;
	}

	public void setId(BigInteger id) {
		this.id = id;
	}

	public String getFlowerId() {
		return this.flowerId;
	}

	public void setFlowerId(String flowerId) {
		this.flowerId = flowerId;
	}

	public String getOccasionName() {
		return this.occasionName;
	}

	public void setOccasionName(String occasionName) {
		this.occasionName = occasionName;
	}

	public String getSellerId() {
		return this.sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

}