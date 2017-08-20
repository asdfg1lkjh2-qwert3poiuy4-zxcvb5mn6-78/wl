package com.wedlock.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
public class FreesProduct implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(columnDefinition = "bigint(20) unsigned")
	private long id;

	@ManyToOne
	// @JsonIgnore
	@JoinColumn(name = "withPId")
	private AllProducts withId;

	@ManyToOne
	// @JsonIgnore
	@JoinColumn(name = "toPId")
	private AllProducts toId;

	@Column(columnDefinition = "int(11) unsigned")
	private int qty;

	private boolean status;
	@Temporal(TemporalType.DATE)
	private Date validTo;

	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date entryTime;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateTime;

	@Transient
	private String productName;
	@Transient
	private Date validFrom;
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public AllProducts getWithId() {
		return withId;
	}

	public void setWithId(AllProducts withId) {
		this.withId = withId;
	}

	public AllProducts getToId() {
		return toId;
	}

	public void setToId(AllProducts toId) {
		this.toId = toId;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getValidTo() {
		return validTo;
	}

	public void setValidTo(Date validTo) {
		this.validTo = validTo;
	}

	public Date getEntryTime() {
		return entryTime;
	}
	
	public Date getUpdateTime() {
		return updateTime;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getValidFrom() {
		return validFrom;
	}

	public void setValidFrom(Date validFrom) {
		this.validFrom = validFrom;
	}
}
