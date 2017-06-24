package com.wedlock.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiSystem;

import org.codehaus.jackson.JsonParser;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.Occasion;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.State;
import com.wedlock.model.SubCategoryAvailable;
import com.wedlock.model.TimeZone;
import com.wedlock.model.ZipCode;
import com.wedlock.service.AdminDetailsService;
import com.wedlock.service.CategoryAvailableService;
import com.wedlock.service.CityService;
import com.wedlock.service.OccasionService;
import com.wedlock.service.SellerService;
import com.wedlock.service.StateService;
import com.wedlock.service.SubCategoryAvailableService;
import com.wedlock.service.ZipCodeService;
import com.wedlock.util.createId;

/*Please Don't Delete Any Of The Imports As They Are Not Unnecessary. 
They look so because of some commented api's which we will be taken care afterwards.
*/

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
	@Autowired
	private SubCategoryAvailableService subCategoryAvailableService;
	@Autowired
	private AdminDetailsService adminDetailsService;
	@Autowired
	private SellerService sellerService;
	@Autowired
	HttpSession httpSession;
	
	final String timeZoneApi = "http://api.timezonedb.com/v2/get-time-zone?key=U33W5JLS2CRZ&format=json&by=zone&zone=Asia/Kolkata";

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
		String cityValues[] = city.getOtherCityDetails().split("_");
		AdminResponseClass adminResponseClass = cityService.saveCity(city,cityValues);
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
	
	@RequestMapping(value = "/admin-fetchCityByStateId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchCityByStateId(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = cityService.fetchCityByStateId(id);
		return adminResponseClass;
	}

	/* For PinCode */
	@RequestMapping(value = "/admin-addEditZipCode", method = RequestMethod.POST)
	public @ResponseBody boolean addEditZipCode(@RequestBody ZipCode zipcode) {
		String zipCodeValues[] = zipcode.getOtherZipCodeDetails().split("_");
		AdminResponseClass adminResponseClass = zipCodeService.saveZipCode(zipcode,zipCodeValues);
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
	
	@RequestMapping(value = "/admin-fetchZipCodeByCityId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass adminFetchZipCodeByCityId(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = zipCodeService.fetchZipCodeByCityId(id);
		return adminResponseClass;
	}
	/* For Service Available */

	
	
	@RequestMapping(value = "/singleUpload", method = RequestMethod.POST)
	public @ResponseBody boolean test(HttpServletRequest request,
			@RequestParam("file") CommonsMultipartFile singleUploadFile) {
		boolean status = false;
		System.out.println("////// Inside there");

		System.out.println("////// Inside there reh" + singleUploadFile.getOriginalFilename());

		String fileName[] = singleUploadFile.getOriginalFilename().split("_");
		String folderName = fileName[0];
		

		/*
		 * try { ServletContext context = request.getServletContext(); String
		 * uploadPath = context.getRealPath("/" + folderName); File uploadDir =
		 * new File(uploadPath); if (!uploadDir.exists()) { boolean success =
		 * uploadDir.mkdir();
		 * 
		 * if (success) { success = (new File(uploadDir + "/" +
		 * subFolderName)).mkdir(); }
		 * 
		 * } String path = uploadDir + "/" + subFolderName + "/" +fileName[2];
		 * System.out.println("Path is" + path); File serverFile = new
		 * File(path); BufferedOutputStream stream = new
		 * BufferedOutputStream(new FileOutputStream(serverFile));
		 * stream.write(singleUploadFile.getBytes()); stream.close(); url =
		 * folderName+"_"+subFolderName+"_"+fileName[2];
		 * 
		 * }
		 */ 
		try {
			ServletContext context = request.getServletContext();
			String uploadPath = context.getRealPath("/" + folderName);
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				boolean success = uploadDir.mkdir();
				if (success) {
					success = (new File(uploadDir + "/temp")).mkdir();
				}
			}
			String path = uploadDir + "/temp/" + fileName[1];
			System.out.println("Path is" + path);
			File serverFile = new File(path);
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
			stream.write(singleUploadFile.getBytes());
			status = true;
			stream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-addEditCategoryAvailable", method = RequestMethod.POST)
	public @ResponseBody boolean addEditCategoryAvailable(@RequestBody CategoryAvailable categoryAvailable,
			BindingResult bindingResult, HttpServletRequest request) {
		ServletContext context = request.getServletContext();
		
		String categoryIconFiles[] = categoryAvailable.getAllFiles().split(",");
		for(int i = 0; i<categoryIconFiles.length; i++){
			String subFolderCategory[] = categoryIconFiles[i].split("_");
			if(i == (categoryIconFiles.length - 1)){
				String uploadPath = context.getRealPath("/" + subFolderCategory[0]);
				File uploadDir = new File(uploadPath);
				if (uploadDir.exists()) {

					File upLoadSubFolder = new File(uploadDir + "/" + subFolderCategory[1]);
					if (!upLoadSubFolder.exists()) {
						boolean success = upLoadSubFolder.mkdir();
					}

				}
				
				File file = new File(context.getRealPath("/" + subFolderCategory[0] + "/temp/" + subFolderCategory[2].trim()));
				file.renameTo(new File(context.getRealPath("/" + subFolderCategory[0] + "/" + subFolderCategory[1] + "/" + subFolderCategory[2].trim())));
				System.out.println("////New File is"+new File(context.getRealPath("/" + subFolderCategory[0] + "/" + subFolderCategory[1] + "/" + subFolderCategory[2].trim())));
				categoryAvailable.setIconFile(subFolderCategory[0] + "/" + subFolderCategory[1] + "/" + subFolderCategory[2].trim());
			}else{
				File currentFile = new File(context.getRealPath("/" + subFolderCategory[0] + "/temp/" + subFolderCategory[2].trim()));
				currentFile.delete();
			}
		}
		
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
	
	/*For Sub Category*/
	@RequestMapping(value = "/admin-addEditSubCategory", method = RequestMethod.POST)
	public @ResponseBody boolean adminAddEditSubCategory(@RequestBody SubCategoryAvailable subCategory, BindingResult bindingResult) {
		String subCategoryValues[] = subCategory.getOtherSubCategoryDetails().split("_");
		AdminResponseClass adminResponseClass = subCategoryAvailableService.saveSubCategoryAvailable(subCategory,subCategoryValues);
		return adminResponseClass.isStatus();
	}
	
	
	
	
	
	
	
	
	/*For Admin Register*/
	
	@RequestMapping(value = "/admin-addEditAdminDetails", method = RequestMethod.POST)
	public @ResponseBody boolean addEditAdminDetails() throws JsonParseException, JsonMappingException, IOException {
		
		/*URL url = new URL(timeZoneApi);

		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		TimeZone timeZone = objectMapper.readValue(url, TimeZone.class);
		System.out.println("////Time Zone " + timeZone.getCountryName() + " " + timeZone.getFormatted());*/
		
		AdminResponseClass adminResponseClass = adminDetailsService.countRowsAdminDetails();
		if(adminResponseClass.getCountRows() < 1){
			httpSession.setAttribute("firstLogin", true);
			AdminDetails adminDetails = new AdminDetails();
			adminDetails.setFirstName("Wedlock");
			adminDetails.setLastName("MSS");
			adminDetails.setEmailId("wedlock-mss@gmail.com");
			adminDetails.setPassword("mss@123");
			adminDetails.setPhoneNumber("7003082987");
			adminDetails.setAlternateNumber("7278117250");
			adminDetails.setImageName("resources/images/W_AdminLogo.png");
			
			InetAddress ip = InetAddress.getLocalHost();
			System.out.println("Current IP address : " + ip.getHostAddress());
			adminDetails.setIpAddress(ip.getHostAddress());
			
			adminResponseClass = adminDetailsService.saveAdminDetails(adminDetails);
			return adminResponseClass.isStatus();
		}else{
			httpSession.setAttribute("firstLogin", false);
			return Boolean.FALSE;
		}
		
		
	}
	
	/*For Login Admin*/
	@RequestMapping(value = "/admin-loginCredentials", method = RequestMethod.POST)
	public @ResponseBody boolean adminLoginCredentials(@RequestParam("username") String username, @RequestParam("password") String password) {
		AdminResponseClass adminResponseClass = adminDetailsService.checkAdminLoginCredentials(username,password);
		if(adminResponseClass.isStatus()){
			httpSession.setAttribute("adminDetailsSession", adminResponseClass.getAdminDetail());
			adminFetchAllCategorySubCategory();
		}
		return adminResponseClass.isStatus();
	}
	
	
	@RequestMapping(value = "/admin-fetchAllCategorySubCategory", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass adminFetchAllCategorySubCategory() {
		AdminResponseClass adminResponseClass = new AdminResponseClass() ;
		adminResponseClass.setCategoryAvailables(categoryAvailableService.listFetchAllCategoryAvailble());
		adminResponseClass.setSubCategoryAvailables(subCategoryAvailableService.listFetchAllSubCategoryAvailable());
		if(!adminResponseClass.getCategoryAvailables().isEmpty()){
			httpSession.setAttribute("categorySession", adminResponseClass.getCategoryAvailables());
			httpSession.setAttribute("subCategorySession", adminResponseClass.getSubCategoryAvailables());
			adminResponseClass.setStatus(Boolean.TRUE);
		}else{
			adminResponseClass.setStatus(Boolean.FALSE);
		}
		return adminResponseClass;
	}
	
	/*For SignOut*/
	@RequestMapping(value = "/signOut", method = RequestMethod.GET)
	public String SignOut(){
		httpSession.invalidate();
		return "admin/index";
	}
	
	/*For Seller*/
	@RequestMapping(value = "/admin-addEditSellerDetails", method = RequestMethod.POST)
	public @ResponseBody boolean addEditSellerDetails(@RequestBody SellerDetails sellerDetails,BindingResult bindingResult, HttpServletRequest request) {
		System.out.println("/////In servlet");
		
		String addressProofFiles[] = sellerDetails.getAddressProofFiles().split(","); 
		String idProofFiles[] = sellerDetails.getIdProofFiles().split(",");
		String sellerImageFiles[] = sellerDetails.getSellerImageFiles().split(",");
		
		ServletContext context = request.getServletContext();
		for(int i = 0; i<addressProofFiles.length;i++){
			String subAddressProofFiles[] = addressProofFiles[i].split("_");
			if (i == (addressProofFiles.length - 1)) {
				String uploadPath = context.getRealPath("/" + subAddressProofFiles[0]);
				File uploadDir = new File(uploadPath);
				if (uploadDir.exists()) {

					File upLoadSubFolder = new File(uploadDir + "/" + subAddressProofFiles[1] + "_"
							+ sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber());
					if (!upLoadSubFolder.exists()) {
						boolean success = upLoadSubFolder.mkdir();
					}
					
				}
				
				File file = new File(context.getRealPath("/" + subAddressProofFiles[0] + "/temp/" + subAddressProofFiles[2].trim()));
				file.renameTo(new File(context.getRealPath("/" + subAddressProofFiles[0] + "/" + subAddressProofFiles[1]+ "_" + sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber() + "/"+ subAddressProofFiles[2].trim())));
				sellerDetails.setSellerAddressProofImg(subAddressProofFiles[0] + "/" + subAddressProofFiles[1]+ "_" + sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber() + "/"+ subAddressProofFiles[2].trim());
			}else{
				File currentFile = new File(context.getRealPath("/" + subAddressProofFiles[0] + "/temp/" + subAddressProofFiles[2].trim()));
				currentFile.delete();
			}
		}
		
		for(int i = 0; i<idProofFiles.length;i++){
			String subIdProofFiles[] = idProofFiles[i].split("_");
			if (i == (idProofFiles.length - 1)) {
				String uploadPath = context.getRealPath("/" + subIdProofFiles[0]);
				File uploadDir = new File(uploadPath);
				if (uploadDir.exists()) {

					File upLoadSubFolder = new File(uploadDir + "/" + subIdProofFiles[1] + "_"+ sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber());
					if (!upLoadSubFolder.exists()) {
						boolean success = upLoadSubFolder.mkdir();
					}
					
				}
				
				File file = new File(context.getRealPath("/" + subIdProofFiles[0] + "/temp/" + subIdProofFiles[2].trim()));
				file.renameTo(new File(context.getRealPath("/" + subIdProofFiles[0] + "/" + subIdProofFiles[1]+ "_" + sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber() + "/"+ subIdProofFiles[2].trim())));
				sellerDetails.setSellerIdProofImg(subIdProofFiles[0] + "/" + subIdProofFiles[1]+ "_" + sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber() + "/"+ subIdProofFiles[2].trim());
			}else{
				File currentFile = new File(context.getRealPath("/" + subIdProofFiles[0] + "/temp/" + subIdProofFiles[2].trim()));
				currentFile.delete();
			}
		}
		
		for(int i = 0; i<sellerImageFiles.length;i++){
			String subSellerImageFiles[] = sellerImageFiles[i].split("_");
			System.out.println("////SubFolderSellerImage"+subSellerImageFiles[2].trim()+"  Length is"+sellerImageFiles.length);
			if (i == (sellerImageFiles.length - 1)) {
				String uploadPath = context.getRealPath("/" + subSellerImageFiles[0]);
				File uploadDir = new File(uploadPath);
				if (uploadDir.exists()) {

					File upLoadSubFolder = new File(uploadDir + "/" + subSellerImageFiles[1] + "_"+ sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber());
					if (!upLoadSubFolder.exists()) {
						boolean success = upLoadSubFolder.mkdir();
					}
					
				}
				
				File file = new File(context.getRealPath("/" + subSellerImageFiles[0] + "/temp/" + subSellerImageFiles[2].trim()));
				System.out.println("////File is" + file);
				file.renameTo(new File(context.getRealPath("/" + subSellerImageFiles[0] + "/" + subSellerImageFiles[1]+ "_" + sellerDetails.getSellerFirstName() + "_" + sellerDetails.getSellerContactNumber() + "/"+ subSellerImageFiles[2].trim())));
				System.out.println("////Rename file is" + new File(context.getRealPath("/" + subSellerImageFiles[0] + "/"+ subSellerImageFiles[1] + "_" + sellerDetails.getSellerFirstName() + "_"+ sellerDetails.getSellerContactNumber() + "/" + subSellerImageFiles[2].trim())));
				sellerDetails.setSellerImg(subSellerImageFiles[0] + "/"+ subSellerImageFiles[1] + "_" + sellerDetails.getSellerFirstName() + "_"+ sellerDetails.getSellerContactNumber() + "/" + subSellerImageFiles[2].trim());
			}else{
				File currentFile = new File(context.getRealPath("/" + subSellerImageFiles[0] + "/temp/" + subSellerImageFiles[2].trim()));
				currentFile.delete();
			}
		}
		AdminResponseClass adminResponseClass = sellerService.findLastSellerId();
		if(adminResponseClass.getLastId().equals("0")){
			String id = createId.IdGeneration("SELLER0");
			sellerDetails.setId(id);
		}else{
			String id = createId.IdGeneration(adminResponseClass.getLastId());
			sellerDetails.setId(id);
		}
		sellerService.addEditSellerDetails(sellerDetails);
		return adminResponseClass.isStatus();
	}

	
}
