package com.wedlock.util;

public class AllCategoryNames {
	public static String getCategoryName(String requestUrl){
		String categoryName;
		switch (requestUrl) {
		case "admin-addEditPhotographer":
			categoryName = "Photographer";
			break;

		default:
			throw new IllegalArgumentException("Invalid requestUrl");
		}
		return categoryName;
	}
}