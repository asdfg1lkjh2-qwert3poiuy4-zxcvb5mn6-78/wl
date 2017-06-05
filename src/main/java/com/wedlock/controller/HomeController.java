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
}
