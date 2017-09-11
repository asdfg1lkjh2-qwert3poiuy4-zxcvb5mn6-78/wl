package com.wedlock.util;

public class AllCategoryNames {
	public static String getCategoryName(String requestUrl){
		String categoryName;
		switch (requestUrl) {
		case "admin-addEditPhotographer":
			categoryName = "Photographer";
			break;
		case "admin-addEditFlower":
			categoryName = "Florist";
			break;
		case "admin-addEditCatering":
			categoryName = "Catering";
			break;
		case "admin-addEditHall":
			categoryName = "Hall";
			break;
		default:
			throw new IllegalArgumentException("Invalid requestUrl");
		}
		return categoryName;
	}
}
