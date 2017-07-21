package com.wedlock.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class SellerPhotographer implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String productName;
	private String productId;
	@Column(columnDefinition = "TEXT")
	private String photoDescription;
	private int noOfPhotosProvided;
	@Column(columnDefinition = "TEXT")
	private String videoDescription;
	private int videoLength;
	
	@OneToMany(mappedBy="product")
	private List<SellerProductImagesVideos> sellerProductImagesVideos;

}
