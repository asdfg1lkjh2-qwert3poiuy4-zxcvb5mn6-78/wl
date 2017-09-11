package com.wedlock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String home() {
		return "admin/index";
	}

	@RequestMapping(value = "/admin-addEditSeller")
	public String adminAddEditSeller() {
		return "admin/admin-addEditSeller";
	}

	@RequestMapping(value = "/admin-addEditFlower")
	public String adminAddEditFlower() {
		return "admin/admin-addEditFlower";
	}
	
	@RequestMapping(value= "/admin-addEditPhotographer")
	public String adminAddEditPhotographer(){
		return "admin/admin-addEditPhotographer";
	}
	@RequestMapping(value= "/admin-addEditPhotographyType")
	public String adminAddEditPhotographyType(){
		return "admin/admin-addEditPhotographyType";
	}
	@RequestMapping(value ="/admin-addEditPhotographyOccassion")
	public String adminAddEditPhotographyOccassion(){
		return "admin/admin-addEditPhotographyOccassion";
	}
	
	@RequestMapping(value= "/admin-addEditProductType")
	public String adminAddEditProductType(){
		return "admin/admin-addEditProductType";
	}
	
	@RequestMapping(value= "/admin-addEditHall")
	public String adminAddEditHall(){
		return "admin/admin-addEditHall";
	}
	
	@RequestMapping(value= "/admin-addEditCaterer")
	public String adminAddEditCaterer(){
		return "admin/admin-addEditCaterer";
	}
	
	@RequestMapping(value= "/test")
	public String test(){
		return "admin/test";
	}
	
	@RequestMapping(value= "/admin-addEditCategory")
	public String adminAddEditCategory(){
		return "admin/admin-addEditCategory";
	}
	
	@RequestMapping(value= "/admin-dashboard")
	public String adminDashboard(){
		return "admin/admin-dashboard";
	}
	
	@RequestMapping(value= "/admin-addEditSubCategory")
	public String adminAddEditSubCategory(){
		return "admin/admin-addEditSubCategory";
	}
	
	@RequestMapping(value ="/admin-addEditState")
	public String admiAddEditState(){
		return "admin/admin-addEditState";
	}
	
	@RequestMapping(value ="/admin-addEditCity")
	public String adminAddEditCity(){
		return "admin/admin-addEditCity";
	}
	
	@RequestMapping(value ="/admin-addEditZipCode")
	public String adminAddEditZipCode(){
		return "admin/admin-addEditZipCode";
	}
	
	@RequestMapping(value ="/admin-addEditOccasion")
	public String adminAddEditOccasion(){
		return "admin/admin-addEditOccasion";
	}
	
	@RequestMapping(value ="/admin-addEditFlowerType")
	public String adminAddEditFlowerType(){
		return "admin/admin-addEditFlowerType";
	}
	@RequestMapping(value ="/admin-viewSeller")
	public String adminViewSeller(){
		return "admin/admin-viewSeller";
	}
	@RequestMapping(value ="/admin-viewPhotographyProducts")
	public String adminViewPhotographyProducts(){
		return "admin/admin-viewPhotographyProducts";
	}
	@RequestMapping(value ="/admin-viewFloristProducts")
	public String adminViewFloristProducts(){
		return "admin/admin-viewFloristProducts";
	}
	@RequestMapping(value ="/admin-addEditFoodType")
	public String adminAddEditFoodType(){
		return "admin/admin-addEditFoodType";
	}
	@RequestMapping(value ="/admin-addEditFoodDetails")
	public String adminAddEditFoodDetails(){
		return "admin/admin-addEditFoodDetails";
	}
	@RequestMapping(value ="/admin-addEditCatering")
	public String adminAddEditCatering(){
		return "admin/admin-addEditCatering";
	}
	@RequestMapping(value ="/admin-viewCateringProducts")
	public String adminViewCateringProducts(){
		return "admin/admin-viewCateringProducts";
	}
	@RequestMapping(value ="/admin-viewSellerProfile")
	public String adminViewSellerProfile(){
		return "admin/admin-viewSellerProfile";
	}
	@RequestMapping(value ="/admin-viewHallProducts")
	public String adminViewHallProducts(){
		return "admin/admin-viewHallProducts";
	}
}
