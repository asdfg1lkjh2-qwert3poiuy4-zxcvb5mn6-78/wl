package com.wedlock.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.Occasion;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.State;
import com.wedlock.model.ZipCode;
import com.wedlock.service.CategoryAvailableService;
import com.wedlock.service.CityService;
import com.wedlock.service.OccasionService;
import com.wedlock.service.StateService;
import com.wedlock.service.ZipCodeService;

@Controller
public class AdminController {

	@Autowired
	private StateService stateService;
	@Autowired
	private CityService cityService;
	@Autowired
	private ZipCodeService zipCodeService;
	@Autowired
	private CategoryAvailableService categoryAvailableService;
	@Autowired
	private OccasionService occasionService;

	/* For State */
	@RequestMapping(value = "/admin-addEditState", method = RequestMethod.POST)
	public @ResponseBody boolean addEditState(@RequestBody State state) {
		AdminResponseClass adminResponseClass = stateService.saveState(state);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllStates", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllStates() {
		AdminResponseClass adminResponseClass = stateService.fetchAllStates();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchStateById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchStateById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = stateService.fetchStateById(id);
		return adminResponseClass;
	}

	/* For City */
	@RequestMapping(value = "/admin-addEditCity", method = RequestMethod.POST)
	public @ResponseBody boolean addEditCity(@RequestBody City city) {
		AdminResponseClass adminResponseClass = cityService.saveCity(city);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllCities", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCities() {
		AdminResponseClass adminResponseClass = cityService.fetchAllCities();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchCityById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchCityById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = cityService.fetchCityById(id);
		return adminResponseClass;
	}

	/* For PinCode */
	@RequestMapping(value = "/admin-addEditZipCode", method = RequestMethod.POST)
	public @ResponseBody boolean addEditZipCode(@RequestBody ZipCode zipcode) {
		AdminResponseClass adminResponseClass = zipCodeService.saveZipCode(zipcode);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllZipCodes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllZipCodes() {
		AdminResponseClass adminResponseClass = zipCodeService.fetchAllZipCodes();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchZipCodeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchZipCodeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = zipCodeService.fetchZipCodeById(id);
		return adminResponseClass;
	}

	/* For Service Available */

	String url = "";

	@RequestMapping(value = "/singleUpload", method = RequestMethod.POST)
	public @ResponseBody boolean test(HttpServletRequest request,
			@RequestParam("file") CommonsMultipartFile singleUploadFile) {
		System.out.println("////// Inside there");

		System.out.println("////// Inside there reh" + singleUploadFile.getOriginalFilename());

		String fileName[] = singleUploadFile.getOriginalFilename().split("_");
		String folderName = fileName[0];
		String subFolderName = fileName[1];

		try {
			ServletContext context = request.getServletContext();
			String uploadPath = context.getRealPath("/" + folderName);
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				boolean success = uploadDir.mkdir();

				if (success) {
					success = (new File(uploadDir + "/" + subFolderName)).mkdir();
				}

			}
			String path = uploadDir + "/" + subFolderName + "/" + fileName[2];
			System.out.println("Path is" + path);
			File serverFile = new File(path);
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
			stream.write(singleUploadFile.getBytes());
			stream.close();
			url = path;

		} catch (Exception e) {
			e.printStackTrace();

		}

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-addEditCategoryAvailable", method = RequestMethod.POST)
	public @ResponseBody boolean addEditCategoryAvailable(@RequestBody CategoryAvailable categoryAvailable,
			BindingResult bindingResult, HttpServletRequest request) {
		/*
		 * ServletContext context=request.getServletContext();
		 * System.out.println(categoryAvailable.getAbc());
		 */
		categoryAvailable.setIconFile(url);
		/*
		 * if(!(("Category/categoryIcon/"+categoryAvailable.getAbc()).equals(
		 * categoryAvailable.getIconFile()))){ File currentFile = new
		 * File(context.getRealPath("/Category/categoryIcon/"+categoryAvailable.
		 * getAbc())); currentFile.delete(); }
		 */
		AdminResponseClass adminResponseClass = categoryAvailableService.saveCategoryAvailable(categoryAvailable);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllCategoryAvailble", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCategoryAvailble() {
		AdminResponseClass adminResponseClass = categoryAvailableService.fetchAllCategoryAvailble();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchCategoryAvailableById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchCategoryAvailableById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = categoryAvailableService.fetchCategoryAvailableById(id);
		return adminResponseClass;
	}

	/* For Occasion */
	@RequestMapping(value = "/admin-addEditOccasion", method = RequestMethod.POST)
	public @ResponseBody boolean addEditOccasion(@RequestBody Occasion occasion, BindingResult bindingResult) {
		System.out.println("/////" + bindingResult.toString());
		AdminResponseClass adminResponseClass = occasionService.addEditOccasion(occasion);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllOccasions", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllOccasions() {
		AdminResponseClass adminResponseClass = occasionService.fetchAllOccasions();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchOccasionsById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchOccasionsById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = occasionService.fetchOccasionsById(id);
		return adminResponseClass;
	}

}
