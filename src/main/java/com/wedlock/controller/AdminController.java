package com.wedlock.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.NoSuchProviderException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.Caterer;
import com.wedlock.model.City;
import com.wedlock.model.Flower;
import com.wedlock.model.Food;
import com.wedlock.model.FoodOfPackage;
import com.wedlock.model.FoodType;
import com.wedlock.model.FreesProduct;
import com.wedlock.model.Halls;
import com.wedlock.model.IntProductOccasion;
import com.wedlock.model.Occasion;
import com.wedlock.model.Otp;
import com.wedlock.model.PhotographyOccasion;
import com.wedlock.model.PhotographyType;
import com.wedlock.model.ProductType;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerDiscount;
import com.wedlock.model.SellerInactiveDetails;
import com.wedlock.model.SellerPhotographer;
import com.wedlock.model.SellerPhotographyOccasion;
import com.wedlock.model.SellerProductImagesVideos;
import com.wedlock.model.SellerProductPricing;
import com.wedlock.model.State;
import com.wedlock.model.SubCategoryAvailable;
import com.wedlock.model.ZipCode;
import com.wedlock.service.AdminDetailsService;
import com.wedlock.service.AllProductsService;
import com.wedlock.service.CategoryAvailableService;
import com.wedlock.service.CategoryTakenService;
import com.wedlock.service.CatererService;
import com.wedlock.service.CityService;
import com.wedlock.service.FlowerService;
import com.wedlock.service.FoodOfPackageService;
import com.wedlock.service.FoodService;
import com.wedlock.service.FoodTypeService;
import com.wedlock.service.HallsService;
import com.wedlock.service.FreesProductService;
import com.wedlock.service.MailService;
import com.wedlock.service.OccasionService;
import com.wedlock.service.OtpService;
import com.wedlock.service.PhotographyOccasionService;
import com.wedlock.service.PhotographyTypeService;
import com.wedlock.service.ProductTypeService;
import com.wedlock.service.SellerBankDetailsService;
import com.wedlock.service.SellerDiscountService;
import com.wedlock.service.SellerInactiveService;
import com.wedlock.service.SellerPhotographerService;
import com.wedlock.service.SellerPhotographyOccasionService;
import com.wedlock.service.SellerProductImagesVideosService;
import com.wedlock.service.SellerProductPricingService;
import com.wedlock.service.SellerService;
import com.wedlock.service.StateService;
import com.wedlock.service.SubCategoryAvailableService;
import com.wedlock.service.TestModelService;
import com.wedlock.service.ZipCodeService;
import com.wedlock.util.AllCategoryNames;
import com.wedlock.util.CreateId;
import com.wedlock.util.ImageResizer;

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
	private SellerBankDetailsService sellerBankDetailsService;
	@Autowired
	private SellerInactiveService sellerInactiveService;
	@Autowired
	private MailService mailService;
	@Autowired
	private ProductTypeService productTypeService;
	@Autowired
	private PhotographyTypeService photographyTypeService;
	@Autowired
	private PhotographyOccasionService photographyOccasionService;
	@Autowired
	private AllProductsService allProductsService;
	@Autowired
	private SellerPhotographerService sellerPhotographerService;
	@Autowired
	private SellerProductImagesVideosService sellerProductImagesVideosService;
	@Autowired
	private SellerProductPricingService sellerProductPricingService;
	@Autowired
	private SellerPhotographyOccasionService sellerPhotographyOccasionService;
	@Autowired
	private SellerDiscountService sellerDiscountService;
	@Autowired
	private OtpService otpService;
	@Autowired
	private FlowerService flowerService;
	@Autowired
	private FreesProductService freesProductService;
	@Autowired
	private CategoryTakenService categoryTakenService;
	@Autowired
	private FoodTypeService foodTypeService;
	@Autowired
	private FoodService foodService;
	@Autowired
	private CatererService catererService;
	@Autowired
	private FoodOfPackageService foodOfPackageService;
	@Autowired
	private HallsService hallsService;
	@Autowired
	HttpSession httpSession;
	
	
	final String timeZoneApi = "http://api.timezonedb.com/v2/get-time-zone?key=U33W5JLS2CRZ&format=json&by=zone&zone=Asia/Kolkata";
    
	@RequestMapping(value = "/admin-addEditState", method = RequestMethod.POST)
	public @ResponseBody boolean addEditState(@RequestBody State state) {
			AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			System.out.println("/////EditStateId" + state.getEditStateId());
			if (state.getEditStateId() != 0) {
				state.setId(state.getEditStateId());
			}
			adminResponseClass = stateService.saveState(state);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllStates", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllStates() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = stateService.fetchAllStates();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchStateById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchStateById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = stateService.fetchStateById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}

	/* For City */
	@RequestMapping(value = "/admin-addEditCity", method = RequestMethod.POST)
	public @ResponseBody boolean addEditCity(@RequestBody City city) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(city.getEditCityId()!=0){
				city.setId(city.getEditCityId());
			}
			if(city.getOtherCityDetails() !=null){
				String cityValues[] = city.getOtherCityDetails().split("_");
			    adminResponseClass = cityService.saveCity(city,cityValues);
			}else{
				String cityValues[] = new String[0];
				adminResponseClass = cityService.saveCity(city,cityValues);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllCities", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCities() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = cityService.fetchAllCities();
			System.out.println("///List is"+adminResponseClass.getListAllCities().size());
		} catch (Exception e) {
			e.printStackTrace();
		}
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
		if(zipcode.getEditZipCodeId() != 0){
			zipcode.setId(zipcode.getEditZipCodeId());
		}
		AdminResponseClass adminResponseClass;
		if(zipcode.getOtherZipCodeDetails() !=null){
			String zipCodeValues[] = zipcode.getOtherZipCodeDetails().split("_");
			adminResponseClass = zipCodeService.saveZipCode(zipcode,zipCodeValues);
		}
		else{
			String zipCodeValues[] = new String[0];
			adminResponseClass = zipCodeService.saveZipCode(zipcode,zipCodeValues);
		}
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
	@RequestMapping(value = "/admin-removeUnusedImagesVideos", method = RequestMethod.POST)
	public @ResponseBody boolean removeUnusedImagesVideos(@RequestBody ObjectNode objectNode,BindingResult bindingResult , HttpServletRequest request) {
		boolean status = false;
		String imageFile[] = objectNode.get("imageId").asText().split("_");
		ServletContext context = request.getServletContext();
		File currentFile = new File(context.getRealPath("/" + imageFile[0] + "/temp/" + imageFile[1].trim()));
		currentFile.delete();
		status = true;
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
		if(categoryAvailable.getEditCategoryId() !=0){
			categoryAvailable.setId(categoryAvailable.getEditCategoryId());
		}
		//System.out.println("//// is HalfYearly"+categoryAvailable.isHalfYearly()+"//// Half Yearly Charge"+categoryAvailable.getHalfYearlyCharge());
		AdminResponseClass adminResponseClass = categoryAvailableService.saveCategoryAvailable(categoryAvailable);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllCategoryAvailble", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCategoryAvailble() {
		AdminResponseClass adminResponseClass = categoryAvailableService.fetchAllCategoryAvailble();
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchAllCategoryAvailbleForDatatable", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCategoryAvailbleForDataTable() {
		AdminResponseClass adminResponseClass = categoryAvailableService.fetchAllCategoryAvailbleForDataTable();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchCategoryAvailableById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchCategoryAvailableById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = categoryAvailableService.fetchCategoryAvailableById(id);
		return adminResponseClass;
	}

	/* For Occasion */
	@RequestMapping(value = "/admin-addEditOccasion", method = RequestMethod.POST)
	public @ResponseBody boolean addEditOccasion(@RequestBody Occasion occasion) {
		if(occasion.getEditId() != 0){
			occasion.setId((occasion.getEditId()));
		}
		AdminResponseClass adminResponseClass = occasionService.addEditOccasion(occasion);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllOccasion", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllOccasions() {
		AdminResponseClass adminResponseClass = occasionService.fetchAllOccasions();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchOccasionById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchOccasionsById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = occasionService.fetchOccasionsById(id);
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchAllOccasionWithStatus", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllOccasionsWithStatus() {
		AdminResponseClass adminResponseClass = occasionService.fetchAllOccasionsWithStatus();
		return adminResponseClass;
	}
	
	/*For Sub Category*/

	@RequestMapping(value = "/admin-addEditSubCategory", method = RequestMethod.POST)
	public @ResponseBody boolean adminAddEditSubCategory(@RequestBody SubCategoryAvailable subCategory, BindingResult bindingResult) {
		
		System.out.println("///SubCategory Id"+subCategory.getEditId());
		if(subCategory.getEditId() !=0){
			subCategory.setId(subCategory.getEditId());
		}
		
		AdminResponseClass adminResponseClass;
		String subCategoryValues[];
		if(subCategory.getOtherSubCategoryDetails() !=null){
			subCategoryValues= subCategory.getOtherSubCategoryDetails().split("_");
			adminResponseClass= subCategoryAvailableService.saveSubCategoryAvailable(subCategory,subCategoryValues);
		}else{
			subCategoryValues = new String[0];
			adminResponseClass= subCategoryAvailableService.saveSubCategoryAvailable(subCategory,subCategoryValues);
		}
		return adminResponseClass.isStatus();

	}
	
	@RequestMapping(value = "/admin-fetchAllSubCategoryAvailable", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSubCategoryAvailable() {
		AdminResponseClass adminResponseClass = subCategoryAvailableService.fetchAllSubCategoryAvailable();
		return adminResponseClass;

	}
	
	@RequestMapping(value = "/admin-fetchAllSubCategoryAvailableById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSubCategoryAvailableById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = subCategoryAvailableService.fetchAllSubCategoryAvailableById(id);
		return adminResponseClass;

	}
	/*For Admin Register*/
	
	@RequestMapping(value = "/admin-addEditAdminDetails", method = RequestMethod.POST)
	public @ResponseBody boolean addEditAdminDetails() throws JsonParseException, JsonMappingException, IOException {
		
		/*URL url = new URL(timeZoneApi);

		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
		System.out.println("////Time Zone " + apiResponseClass.getCountryName() + " " + apiResponseClass.getFormatted());*/
		
		AdminResponseClass adminResponseClass = adminDetailsService.countRowsAdminDetails();
		if(adminResponseClass.getCountRows() < 1){
			httpSession.setAttribute("firstLogin", true);
			AdminDetails adminDetails = new AdminDetails();
			adminDetails.setFirstName("Wedlock");
			adminDetails.setLastName("MSS");
			adminDetails.setEmailId("wedlock-mss@gmail.com");
			adminDetails.setPassword("mss@123");
			adminDetails.setPhoneNumber("7003082897");
			adminDetails.setAlternateNumber("7278117250");
			adminDetails.setImageName("resources/images/W_AdminLogo.png");
			
			InetAddress ip = InetAddress.getLocalHost();
			System.out.println("Current IP address : " + ip.getHostAddress());
			adminDetails.setIpAddress(ip.getHostAddress());
			
			adminResponseClass = adminDetailsService.saveAdminDetails(adminDetails);
			/*if(adminResponseClass.isStatus()){
				String mssg = "Hey Admin, Welcome to Wedlock. Your EmailId is:"+adminDetails.getEmailId()+" and Password is:"+adminDetails.getPassword()+".Do not share this login credentials with anyone";
				String phoneNumber = adminDetails.getPhoneNumber();
				URL url = new URL(smsApi.sendSms(mssg, phoneNumber));
				ObjectMapper objectMapper = new ObjectMapper();
				objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
				ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
				if(apiResponseClass.getTotal_sms() == 0){
					adminResponseClass.setStatus(Boolean.FALSE);
				}
				
				
			}*/
			return adminResponseClass.isStatus();
		}else{
			httpSession.setAttribute("firstLogin", false);
			return Boolean.FALSE;
		}
		
		
	}
	
	/*For Login Admin*/
	@RequestMapping(value = "/admin-loginCredentials", method = RequestMethod.POST)
	public @ResponseBody boolean adminLoginCredentials(@RequestParam("sellerEmailId") String username, @RequestParam("sellerPassword") String password) {
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
		boolean isSeller = false;
		if((SellerDetails)httpSession.getAttribute("sellerDetailsSession") != null){
			isSeller = true;
		}
		adminResponseClass.setCategoryAvailables(categoryAvailableService.listFetchAllCategoryAvailble(isSeller));
		adminResponseClass.setSubCategoryAvailables(subCategoryAvailableService.listFetchAllSubCategoryAvailable());
		if(!adminResponseClass.getCategoryAvailables().isEmpty()){
			if(httpSession.getAttribute("categorySession")!=null && httpSession.getAttribute("subCategorySession")!=null){
				httpSession.removeAttribute("categorySession");
				httpSession.removeAttribute("subCategorySession");
				httpSession.setAttribute("categorySession", adminResponseClass.getCategoryAvailables());
				httpSession.setAttribute("subCategorySession", adminResponseClass.getSubCategoryAvailables());
			}else{
				httpSession.setAttribute("categorySession", adminResponseClass.getCategoryAvailables());
				httpSession.setAttribute("subCategorySession", adminResponseClass.getSubCategoryAvailables());
			}
			
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
	
	/*For Login Seller*/
	@RequestMapping(value = "/seller-loginCredentials", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass sellerLoginCredentials(@RequestBody SellerDetails sellerDetails) throws ParseException, JsonParseException, JsonMappingException, IOException, NoSuchProviderException {
		AdminResponseClass adminResponseClass = sellerService.checkSelleroginCredentials(sellerDetails);
		if(adminResponseClass.isStatus()){
			httpSession.setAttribute("sellerDetailsSession", adminResponseClass.getSellerDetail());
			adminFetchAllCategorySubCategory();
		}
		return adminResponseClass;
	}
	@RequestMapping(value = "/seller-checkOtp", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass checkOtp(@RequestBody Otp otp) {
		AdminResponseClass adminResponseClass = otpService.checkOtpByEmailIdAndPassword(otp);
		if(adminResponseClass.isStatus()){
			httpSession.setAttribute("sellerDetailsSession", adminResponseClass.getSellerDetail());
			adminFetchAllCategorySubCategory();
		}
		return adminResponseClass;
	}
	/*For Seller*/
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	@RequestMapping(value = "/admin-addEditSellerDetails", method = RequestMethod.POST)
	public @ResponseBody boolean addEditSellerDetails(@RequestBody ObjectNode objectNode,BindingResult bindingResult, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException {
		
		/*System.out.println("////In servlet");
		System.out.println("////Object Node is"+sellerDetails.get("sellerFirstName").asText() +" "+sellerDetails.get("sellerLastName").asText()+" "+sellerDetails.get("sellerContactNumber").asText());*/
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		SellerDetails sellerDetails = new SellerDetails();
		String isEdit="";
		try {
			System.out.println("/////In servlet");
			if(((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null) || (objectNode.get("tableName").asText().equals("SellerDetails"))){
				adminResponseClass = sellerService.findSellerByEmailAndContactNo(objectNode.get("sellerEmailId").asText(), objectNode.get("sellerContactNumber").asText(), objectNode.get("editSellerId").asText());
				System.out.println("Admin Response Class"+adminResponseClass.isStatus());
				if(adminResponseClass.isStatus()){
					
					sellerDetails.setSellerFirstName(objectNode.get("sellerFirstName").asText());
					sellerDetails.setSellerLastName(objectNode.get("sellerLastName").asText());
					sellerDetails.setSellerContactNumber(objectNode.get("sellerContactNumber").asText());
					sellerDetails.setSellerAlternateNumber(objectNode.get("sellerAlternateNumber").asText());
					sellerDetails.setEditSellerId(objectNode.get("editSellerId").asText());
					sellerDetails.setSellerPresentAddress(objectNode.get("sellerPresentAddress").asText());
					sellerDetails.setSellerPermanentAddress(objectNode.get("sellerPermanentAddress").asText());
					sellerDetails.setSellerEmailId(objectNode.get("sellerEmailId").asText());
					sellerDetails.setSellerPassword(objectNode.get("sellerPassword").asText());
					sellerDetails.setStateId(objectNode.get("stateId").asLong());
					sellerDetails.setCityId(objectNode.get("cityId").asLong());
					sellerDetails.setZipCodeId(objectNode.get("zipCodeId").asLong());
					
					if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
						String sellerDate = objectNode.get("sellerDateOfBirth").asText();
						SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
						sellerDetails.setSellerDateOfBirth(simpleDateFormat.parse(sellerDate));
					}else{
						SellerDetails sellerDetails1 = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
						sellerDetails.setSellerDateOfBirth(sellerDetails1.getSellerDateOfBirth());
					}
					
					sellerDetails.setSellerGender(objectNode.get("sellerGender").asText());
					sellerDetails.setSellerCompanyName(objectNode.get("sellerCompanyName").asText());
					sellerDetails.setSellerAddressProof(objectNode.get("sellerAddressProof").asText());
					sellerDetails.setSellerIdProof(objectNode.get("sellerIdProof").asText());
					
					sellerDetails.setAddressProofFiles(objectNode.get("addressProofFiles").asText());
					sellerDetails.setIdProofFiles(objectNode.get("idProofFiles").asText());
					sellerDetails.setSellerImageFiles(objectNode.get("sellerImageFiles").asText());
					
					if(!(sellerDetails.getEditSellerId().equals(""))){
						sellerDetails.setId(sellerDetails.getEditSellerId());
						
					}else{
							adminResponseClass = sellerService.findLastSellerId();
							if(adminResponseClass.getLastId().equals("0")){
								String id = new CreateId().IdGeneration("SELLER0");
								sellerDetails.setId(id);
							}else{
								String id = new CreateId().IdGeneration(adminResponseClass.getLastId());
								sellerDetails.setId(id);
							}
					}
					
						String addressProofFiles[] = sellerDetails.getAddressProofFiles().split(","); 
						String idProofFiles[] = sellerDetails.getIdProofFiles().split(",");
						String sellerImageFiles[] = sellerDetails.getSellerImageFiles().split(",");
						
						
						ServletContext context = request.getServletContext();
						if (addressProofFiles[0].indexOf("&_") < 0) {
							for(int i = 0; i<addressProofFiles.length;i++){
								String subAddressProofFiles[] = addressProofFiles[i].split("_");
								if (i == (addressProofFiles.length - 1)) {
									String uploadPath = context.getRealPath("/" + subAddressProofFiles[0]);
									File uploadDir = new File(uploadPath);
									if (uploadDir.exists()) {

										File upLoadSubFolder = new File(uploadDir + "/" + subAddressProofFiles[1] + "_"+ sellerDetails.getId());
										if (!upLoadSubFolder.exists()) {
											boolean success = upLoadSubFolder.mkdir();
										}
										
									}
									
									File file = new File(context.getRealPath("/" + subAddressProofFiles[0] + "/temp/" + subAddressProofFiles[2].trim()));
									file.renameTo(new File(context.getRealPath("/" + subAddressProofFiles[0] + "/" + subAddressProofFiles[1]+ "_" + sellerDetails.getId() + "/"+ subAddressProofFiles[2].trim())));
									sellerDetails.setSellerAddressProofImg(subAddressProofFiles[0] + "/" + subAddressProofFiles[1]+ "_" + sellerDetails.getId() + "/"+ subAddressProofFiles[2].trim());
								}else{
									File currentFile = new File(context.getRealPath("/" + subAddressProofFiles[0] + "/temp/" + subAddressProofFiles[2].trim()));
									currentFile.delete();
								}
							}
						}else{
							String file[] = addressProofFiles[0].split("&_");
							System.out.println("/////Files are reh"+file[0]);
							sellerDetails.setSellerAddressProofImg(file[0]);
						}
						
						if(idProofFiles[0].indexOf("&_") < 0){
							for(int i = 0; i<idProofFiles.length;i++){
								String subIdProofFiles[] = idProofFiles[i].split("_");
								if (i == (idProofFiles.length - 1)) {
									String uploadPath = context.getRealPath("/" + subIdProofFiles[0]);
									File uploadDir = new File(uploadPath);
									if (uploadDir.exists()) {

										File upLoadSubFolder = new File(uploadDir + "/" + subIdProofFiles[1] + "_"+ sellerDetails.getId());
										if (!upLoadSubFolder.exists()) {
											boolean success = upLoadSubFolder.mkdir();
										}
										
									}
									
									File file = new File(context.getRealPath("/" + subIdProofFiles[0] + "/temp/" + subIdProofFiles[2].trim()));
									file.renameTo(new File(context.getRealPath("/" + subIdProofFiles[0] + "/" + subIdProofFiles[1]+ "_" + sellerDetails.getId() + "/"+ subIdProofFiles[2].trim())));
									sellerDetails.setSellerIdProofImg(subIdProofFiles[0] + "/" + subIdProofFiles[1]+ "_" + sellerDetails.getId() + "/"+ subIdProofFiles[2].trim());
								}else{
									File currentFile = new File(context.getRealPath("/" + subIdProofFiles[0] + "/temp/" + subIdProofFiles[2].trim()));
									currentFile.delete();
								}
							}
						}else{
							String file[] = idProofFiles[0].split("&_");
							sellerDetails.setSellerIdProofImg(file[0]);
						}
						
						if(sellerImageFiles[0].indexOf("&_") < 0){  
							for(int i = 0; i<sellerImageFiles.length;i++){
								String subSellerImageFiles[] = sellerImageFiles[i].split("_");
								System.out.println("////SubFolderSellerImage"+subSellerImageFiles[2].trim()+"  Length is"+sellerImageFiles.length);
								if (i == (sellerImageFiles.length - 1)) {
									String uploadPath = context.getRealPath("/" + subSellerImageFiles[0]);
									File uploadDir = new File(uploadPath);
									if (uploadDir.exists()) {

										File upLoadSubFolder = new File(uploadDir + "/" + subSellerImageFiles[1] + "_"+sellerDetails.getId());
										if (!upLoadSubFolder.exists()) {
											boolean success = upLoadSubFolder.mkdir();
										}
										
									}
									
									File file = new File(context.getRealPath("/" + subSellerImageFiles[0] + "/temp/" + subSellerImageFiles[2].trim()));
									System.out.println("////File is" + file);
									file.renameTo(new File(context.getRealPath("/" + subSellerImageFiles[0] + "/" + subSellerImageFiles[1]+ "_" + sellerDetails.getId() + "/"+ subSellerImageFiles[2].trim())));
									System.out.println("////Rename file is" + new File(context.getRealPath("/" + subSellerImageFiles[0] + "/"+ subSellerImageFiles[1] + "_" + sellerDetails.getId() + "/" + subSellerImageFiles[2].trim())));
									sellerDetails.setSellerImg(subSellerImageFiles[0] + "/"+ subSellerImageFiles[1] + "_" + sellerDetails.getId() + "/" + subSellerImageFiles[2].trim());
								}else{
									File currentFile = new File(context.getRealPath("/" + subSellerImageFiles[0] + "/temp/" + subSellerImageFiles[2].trim()));
									currentFile.delete();
								}
							}
							
						}else{
							String file[] = sellerImageFiles[0].split("&_");
							sellerDetails.setSellerImg(file[0]);
						}
						
						
						
						if(!(sellerDetails.getEditSellerId().equals(""))){
							isEdit = "Yes";
						}else{
							isEdit = "No";
						}
						sellerDetails.setEmailVerified(Boolean.FALSE); 
						AdminDetails adminDetails =(AdminDetails)httpSession.getAttribute("adminDetailsSession");
						if(adminDetails != null){
							sellerDetails.setAdminDetails(adminDetails);
						}else{
							SellerDetails sellerDetails2 = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
							/*System.out.println("////Admin Id is"+sellerDetails2.getSellerBankDetails().getAccountNumber());*/
							/*adminResponseClass = adminDetailsService.fetchAdminDetailsById(sellerDetails2.getAdminDetails().getId());
							sellerDetails.setAdminDetails(adminResponseClass.getAdminDetail());*/
							sellerDetails.setMobileVerified(objectNode.get("isMobileVerified").asBoolean());
							sellerDetails.setEmailVerified(objectNode.get("isEmailVerified").asBoolean());
						}
						
						adminResponseClass =sellerService.addEditSellerDetails(sellerDetails,isEdit);
						
						if((AdminDetails)httpSession.getAttribute("adminDetailsSession") == null){
							adminResponseClass = sellerService.fetchAllSellersById(sellerDetails.getId());
							httpSession.removeAttribute("sellerDetailsSession");
							httpSession.setAttribute("sellerDetailsSession", adminResponseClass.getSellerDetail());
							//adminFetchAllCategorySubCategory();
						}
						
						if(isEdit.equals("No")){
							 mailService.sendEmailToSeller(sellerDetails,"notVerified");
							 
							 /*String mssg = "Hello "+sellerDetails.getSellerFirstName()+",Thanks for registering with Wedlock. Your Login Credentials are:- EmailId#"+sellerDetails.getSellerEmailId()+" and Password is#:"+sellerDetails.getSellerPassword()+" .Do not share this login credentials with anyone.";
							 String phoneNumber = sellerDetails.getSellerContactNumber();
							 URL url = new URL(smsApi.sendSms(mssg, phoneNumber));
							 ObjectMapper objectMapper = new ObjectMapper();
							 objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
							 ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
							 System.out.println("////APIResponseClass"+apiResponseClass.getTotal_sms());
							 if(apiResponseClass.getTotal_sms() == 0){
								adminResponseClass.setStatus(Boolean.FALSE);
							 }*/	
						}
					}
				}
			
			if(((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null) || (objectNode.get("tableName").asText().equals("CategoryTaken"))){
				System.out.println("////In Category Taken Part");
				if((adminResponseClass.isStatus() && (objectNode.get("serviceTakenId") != null)) || (objectNode.get("tableName").asText().equals("CategoryTaken"))){
					String categoryTaken = "";
					long categoryTakenId = 0L;
					if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
					 adminResponseClass = sellerService.fetchAllSellersById(sellerDetails.getId());
					}
					
			    	if(objectNode.get("serviceTakenId").asText().indexOf(",") < 0){
			    		if(objectNode.get("categoryTakenId") != null){
			    			categoryTaken = objectNode.get("serviceTakenId").asText();
			    			String subCategoryTaken[] = categoryTaken.split("_");
			    			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			    			Date date = format.parse(subCategoryTaken[1]);
			    			categoryTaken = subCategoryTaken[0] +"_" +date+ "_" +subCategoryTaken[2]+"_"+subCategoryTaken[3];
			    			System.out.println("///Category Taken is"+categoryTaken);
			    			categoryTakenId = objectNode.get("categoryTakenId").asLong();
			    		}else{
			    			if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
			    			  categoryTaken = objectNode.get("serviceTakenId").asText()+"_"+sellerDetails.getSellerRegistrationStart()+"_"+"Yes";
			    			}else{
			    				categoryTaken = objectNode.get("serviceTakenId").asText()+"_"+new Date()+"_"+"Yes";
			    			}
			    			
			    		}
			    		if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
			    		adminResponseClass = categoryTakenService.saveCategoryTaken(adminResponseClass.getSellerDetail(), categoryTaken , categoryTakenId);
			    		}else{
			    		adminResponseClass = categoryTakenService.saveCategoryTaken((SellerDetails)httpSession.getAttribute("sellerDetailsSession"), categoryTaken , categoryTakenId);
			    		if(adminResponseClass.isStatus()){
			    			System.out.println("///////// In else rehsss");
			    			SellerDetails sellerDetails2 = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
			    			adminResponseClass = sellerService.fetchAllSellersById(sellerDetails2.getId());
			    			System.out.println("/// Size of list is"+adminResponseClass.getSellerDetail().getServiceTaken().size());
			    			httpSession.removeAttribute("sellerDetailsSession");
			    			httpSession.setAttribute("sellerDetailsSession", adminResponseClass.getSellerDetail());
							adminFetchAllCategorySubCategory();
			    		  }
			    		 }
			    	}else{
			    		String categoryTakens[] = objectNode.get("serviceTakenId").asText().split(",");
			    		for(int i =0; i<categoryTakens.length; i++){
			    			
			    			if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
			    			  categoryTaken = categoryTaken + categoryTakens[i]+"_"+sellerDetails.getSellerRegistrationStart()+"_"+"Yes" + ",";	
			    			}else{
			    		      categoryTaken = categoryTaken + categoryTakens[i]+"_"+new Date()+"_"+"Yes"+",";
			    			}
			    			
			    			/*if(i!=0){
			    				if(adminResponseClass.isStatus()){
			    					categoryTaken = categoryTakens[i]+"_"+sellerDetails.getSellerRegistrationStart()+"_"+"Yes";
			    					adminResponseClass = categoryTakenService.saveCategoryTaken(sellerDetails, categoryTaken);
			    				}else{
			    					adminResponseClass.setStatus(Boolean.FALSE);
			    				}
			    			}else{
			    				categoryTaken = categoryTakens[i]+"_"+sellerDetails.getSellerRegistrationStart()+"_"+"Yes";
			    				adminResponseClass = categoryTakenService.saveCategoryTaken(sellerDetails, categoryTaken);
			    			}*/
			    		}
			    		categoryTaken = categoryTaken.substring(0, categoryTaken.length()-1);
			    		if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
			    			adminResponseClass = categoryTakenService.saveCategoryTaken(adminResponseClass.getSellerDetail(), categoryTaken , categoryTakenId);
			    		}else{
			    			adminResponseClass = categoryTakenService.saveCategoryTaken((SellerDetails)httpSession.getAttribute("sellerDetailsSession"), categoryTaken , categoryTakenId);
			    			if(adminResponseClass.isStatus()){
			    				System.out.println("/////In else reh");
				    			SellerDetails sellerDetails2 = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
				    			System.out.println("/////In else reh"+sellerDetails2.getId());
				    			adminResponseClass = sellerService.fetchAllSellersById(sellerDetails2.getId());
				    			httpSession.removeAttribute("sellerDetailsSession");
				    			httpSession.setAttribute("sellerDetailsSession", adminResponseClass.getSellerDetail());
								adminFetchAllCategorySubCategory();
				    		  }
			    		}
			    		
			    	}
				}
			}
			if(((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null) || (objectNode.get("tableName").asText().equals("BankDetails"))){
				if((objectNode.get("hasValue").asInt() == 1 && adminResponseClass.isStatus()) || (objectNode.get("tableName").asText().equals("BankDetails"))){
					SellerBankDetails sellerBankDetails = new SellerBankDetails();
					
					if(objectNode.get("editSellerBankDetailsId").asLong() !=0){
						sellerBankDetails.setId(objectNode.get("editSellerBankDetailsId").asLong());
					}
					sellerBankDetails.setAccountHolderName(objectNode.get("accountHolderName").asText());
					sellerBankDetails.setAccountNumber(objectNode.get("accountNumber").asText());
					sellerBankDetails.setIfscCode(objectNode.get("ifscCode").asText());
					sellerBankDetails.setBranchCode(objectNode.get("branchCode").asText());
					sellerBankDetails.setBranchName(objectNode.get("branchName").asText());
					if((AdminDetails)httpSession.getAttribute("adminDetailsSession") != null){
						sellerBankDetails.setSellerId(sellerDetails.getId());
					}else{
						sellerBankDetails.setSellerId(objectNode.get("editSellerId").asText());
					}
					
					adminResponseClass = sellerBankDetailsService.saveSellerBankDetails(sellerBankDetails);
				}
				/*if(objectNode.get("sellerInactive").asText().equals("")){
					SellerInactiveDetails sellerInactiveDetails = new SellerInactiveDetails();
					sellerInactiveDetails.setSellerId(sellerDetails.getId());
					adminResponseClass = sellerInactiveService.saveSellerInactive(sellerInactiveDetails,"Active");
				}else{
					SellerInactiveDetails sellerInactiveDetails = new SellerInactiveDetails();
					sellerInactiveDetails.setInactiveReason(objectNode.get("sellerInactive").asText());
					sellerInactiveDetails.setSellerId(sellerDetails.getId());
					sellerInactiveDetails.setAdminDetails(adminDetails);
					adminResponseClass = sellerInactiveService.saveSellerInactive(sellerInactiveDetails,"Inactive");
				}*/
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return adminResponseClass.isStatus();
		/*return true;*/
	}
	@RequestMapping(value = "/admin-fetchAllSellers", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSellers(){
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerService.fetchAllSellers();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-fetchAllSellersById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSellersById(@RequestParam("id") String id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerService.fetchAllSellersById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;

	}
	
	@RequestMapping(value = "/admin-sellerSendMailByEmailId", method = RequestMethod.POST)
	public @ResponseBody boolean sellerSendMailByEmailId(@RequestBody SellerDetails sellerDetails,BindingResult bindingResult) throws ParseException{
		AdminResponseClass adminResponseClass;
		sellerDetails = sellerService.fetchSellerByEmailId(sellerDetails.getSellerEmailId());
		if(sellerDetails !=null){
			sellerDetails.setEmailVerified(Boolean.TRUE);
			sellerDetails.setStateId(sellerDetails.getState().getId());
			sellerDetails.setCityId(sellerDetails.getCity().getId());
			sellerDetails.setZipCodeId(sellerDetails.getZipCode().getId());
			adminResponseClass = sellerService.addEditSellerDetails(sellerDetails, "Yes");
			if(adminResponseClass.isStatus()){
				mailService.sendEmailToSeller(sellerDetails,"Verified");
				return true;
			} else {
				return false;
			}
		}else{
			return false;
		}
}
	@RequestMapping(value = "/getImage")
	@ResponseBody
	public byte[] getImage(@RequestParam("id") String id, HttpServletRequest request) throws IOException {
		ServletContext context = request.getServletContext();
		if(id.contains(" @-")){
			id = id.replaceAll(" @-", "+@-");
		}
		String rpath = context.getRealPath("/");  
		String fullPath[] = id.split("/");// whatever path you used for // storing the file
			System.out.println("/////Full Path is"+fullPath[0]+" "+fullPath[1]+" "+fullPath[2]); 
		Path path = Paths.get(rpath+"/"+fullPath[0].trim()+"/"+fullPath[1].trim()+"/"+fullPath[2].trim());
		System.out.println("Path is"+path);
		byte[] data = Files.readAllBytes(path);
		return new ImageResizer().resize(data);
	}
	
	@RequestMapping(value = "/getImageRaw")
	@ResponseBody
	public byte[] getImageRaw(@RequestParam("id") String id, HttpServletRequest request) throws IOException {
		ServletContext context = request.getServletContext();
		if(id.contains(" @-")){
			id = id.replaceAll(" @-", "+@-");
		}
		String rpath = context.getRealPath("/");  
		String fullPath[] = id.split("/");// whatever path you used for // storing the file
			System.out.println("/////Full Path is"+fullPath[0]+" "+fullPath[1]+" "+fullPath[2]); 
		Path path = Paths.get(rpath+"/"+fullPath[0].trim()+"/"+fullPath[1].trim()+"/"+fullPath[2].trim());
		System.out.println("Path is"+path);
		byte[] data = Files.readAllBytes(path);
		return data;
	}
	
	/*@RequestMapping(value = "/getImageSocial")
	@ResponseBody
	public byte[] getImageSocialWork(HttpServletRequest request) throws IOException {
		ServletContext context = request.getServletContext();
		String rpath = context.getRealPath("/");
		rpath = rpath + "/Category/categoryIcon/1498758941362tulip.png" ; // whatever path you used for
													// storing the file
		Path path = Paths.get(rpath);
		byte[] data = Files.readAllBytes(path);
		return data;

	}*/

	/*For Product Type*/
	@RequestMapping(value = "/admin-addEditProductType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditProductType(@RequestBody ProductType productType) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(productType.getEditTypeId()!=0){
				productType.setId(productType.getEditTypeId());
				if(productType.getStatusSelect().equals("Active")){
					productType.setStatus(Boolean.TRUE);
				}else{
					productType.setStatus(Boolean.FALSE);
				}
			}
			if(productType.getOtherTypeDetails()!=null){
				String productTypeValues[] = productType.getOtherTypeDetails().split("_");
			    adminResponseClass = productTypeService.saveProductType(productType, productTypeValues);
			}else{
				String productTypeValues[] = new String[0];
				adminResponseClass = productTypeService.saveProductType(productType,productTypeValues);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllProductTypes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllProductTypes() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = productTypeService.fetchAllProductTypes();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchProductTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchProductTypeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = productTypeService.fetchProductTypeById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchProductTypesWithStatusByCat", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchProductTypesWithStatusByCat(@RequestParam("catName") String catName) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = productTypeService.fetchProductTypesWithStatusByCat(catName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Photography Type*/
	@RequestMapping(value = "/admin-addEditPhotographyType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographyType(@RequestBody PhotographyType photographyType) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(photographyType.getEditPhotographyTypeId()!=0){
				photographyType.setId(photographyType.getEditPhotographyTypeId());
				if(photographyType.getPhotographyStatusSelect().equals("Active")){
					photographyType.setStatus(Boolean.TRUE);
				}else{
					photographyType.setStatus(Boolean.FALSE);
				}
			}
			if(photographyType.getOtherTypeDetails()!=null){
				String photographyTypeValues[] = photographyType.getOtherTypeDetails().split("_");
			    adminResponseClass = photographyTypeService.savePhotographyType(photographyType, photographyTypeValues);
			}else{
				String photographyTypeValues[] = new String[0];
				adminResponseClass = photographyTypeService.savePhotographyType(photographyType,photographyTypeValues);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyTypes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyTypes() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = photographyTypeService.fetchAllPhotographyTypes();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchPhotographyTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographyTypeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = photographyTypeService.fetchPhotographyTypeById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Photography Occasion*/
	@RequestMapping(value = "/admin-addEditPhotographyOccasion", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographyOccasion(@RequestBody PhotographyOccasion photographyOccasion) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(photographyOccasion.getEditPhotographyOccasionId()!=0){
				photographyOccasion.setId(photographyOccasion.getEditPhotographyOccasionId());
				if(photographyOccasion.getPhotographyStatusSelect().equals("Active")){
					photographyOccasion.setStatus(Boolean.TRUE);
				}else{
					photographyOccasion.setStatus(Boolean.FALSE);
				}
			}
			if(photographyOccasion.getOtherOccasionDetails()!=null){
				String photographyOccasionValues[] = photographyOccasion.getOtherOccasionDetails().split("_");
			    adminResponseClass = photographyOccasionService.savePhotographyOccasion(photographyOccasion, photographyOccasionValues);
			}else{
				String photographyOccasionValues[] = new String[0];
				adminResponseClass = photographyOccasionService.savePhotographyOccasion(photographyOccasion,photographyOccasionValues);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyOccasions", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyOccasions() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = photographyOccasionService.fetchAllPhotographyOccasions();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchPhotographyOccasionById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographyOccasionById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = photographyOccasionService.fetchPhotographyOccasionById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Photographer Product*/
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	@RequestMapping(value = "/admin-addEditPhotographer", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographer(@RequestBody ObjectNode objectNode, BindingResult bindingResult, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			String photographerId = "";
			AllProducts products = new AllProducts();
			String categoryName;
			// All Products Entry
			System.out.println("////Edit Product Id" + objectNode.get("editProductId").asText());
			if (!(objectNode.get("editProductId").asText().equals(""))) {
				products.setId(objectNode.get("allProductId").asLong());
				adminResponseClass = new AdminResponseClass();
				adminResponseClass.setStatus(Boolean.TRUE);
			} 
				System.out.println("///In else");
				categoryName = AllCategoryNames.getCategoryName(objectNode.get("categoryName").asText());
				adminResponseClass = categoryAvailableService.fetchCategoryByCategoryNameWithStatus(categoryName);
			
			if (adminResponseClass.isStatus()) {
				products.setCategoryAvailable(adminResponseClass.getCategoryAvailable());
				SellerDetails sellerDetails = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
				products.setSellerDetails(sellerDetails);
				adminResponseClass = allProductsService.saveAllProducts(products);
			}

			System.out.println("////All Products id" + products.getId());
			
			// SellerPhotographer Entry
			if (adminResponseClass.isStatus()) {
				SellerPhotographer sellerPhotographer = new SellerPhotographer();
				if (objectNode.get("editProductId").asText().equals("")) {
					adminResponseClass = sellerPhotographerService.findLastSellerPhotographerId();
					if (adminResponseClass.getLastId().equals("0")) {
						String id = new CreateId().IdGeneration("PHOTO0");
						sellerPhotographer.setId(id);
						photographerId = id;
					} else {
						String id = new CreateId().IdGeneration(adminResponseClass.getLastId());
						if (!(id.equals("No Id Found"))) {
							sellerPhotographer.setId(id);
							photographerId = id;
						}
					}

				 sellerPhotographer.setActive(Boolean.TRUE);
				} else {
					sellerPhotographer.setId(objectNode.get("editProductId").asText());
					photographerId = objectNode.get("editProductId").asText();
					if(objectNode.get("productStatus").asText().equals("Active")){
						sellerPhotographer.setActive(Boolean.TRUE);
					}
					else{
						sellerPhotographer.setActive(Boolean.FALSE);
					}

				}
				sellerPhotographer.setName(objectNode.get("name").asText());
				adminResponseClass = photographyTypeService
						.fetchPhotographyTypeById(objectNode.get("photographyTypeName").asLong());
				sellerPhotographer.setPhotographyType(adminResponseClass.getPhotographyType());
				sellerPhotographer.setDescription(objectNode.get("description").asText());
				sellerPhotographer.setNoOfPhotosProvided(objectNode.get("noOfPhotosProvided").asInt());
				sellerPhotographer.setVideoLength(objectNode.get("videoLength").asInt());
				if (objectNode.get("videoDescription") != null) {
					sellerPhotographer.setVideoDescription(objectNode.get("videoDescription").asText());
				}
				sellerPhotographer.setAdvancePaymentPercentage(objectNode.get("advancePaymentPercentage").asDouble());
				sellerPhotographer.setAvailability(objectNode.get("availability").asText());
				sellerPhotographer.setFreebie(objectNode.get("freebie").asText());
				sellerPhotographer.setAllProducts(products);
				adminResponseClass = sellerPhotographerService.saveSellerPhotographer(sellerPhotographer);

			}
			int isEdit = 0;
			if (!objectNode.get("editProductId").asText().equals("")) {
				isEdit = 1;
			}

			if (adminResponseClass.isStatus()) {
				// SellerProductImagesVideos Entry
				ServletContext context = request.getServletContext();
				if (objectNode.get("multipleFiles").asInt() != 1) {
					if (objectNode.get("multipleFiles").asText().indexOf(",") >= 0) {
						String productImages[] = objectNode.get("multipleFiles").asText().split(",");
						List<String> listString = new ArrayList<String>();
						for (String abc : productImages) {
							listString.add(abc);
						}
						if (isEdit == 1) {
							String modal = objectNode.get("modelId").asText();
							String[] modalId = modal.split(",");
							for (int i = 0; i < modalId.length; i++) {
								String a = "";
								/*
								 * for(int j=0; j<productImages.length;j++){
								 * if(productImages[j].indexOf("_"+modalId[i])>=0){ if(a.equals("")){ a =
								 * productImages[j]; listString.remove(productImages[j]);
								 * 
								 * }else{ a = a +","+productImages[j]; listString.remove(productImages[j]); } }
								 * }
								 */
								Iterator<String> iterator = listString.iterator();
								while (iterator.hasNext()) {
									String strings = iterator.next();
									if (strings.indexOf("_" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = strings;
										} else {
											a = a + "," + strings;
										}
										iterator.remove();
									}

								}
								if (!a.equals("")) {
									String[] subA = a.split(",");
									for (int k = 0; k < subA.length; k++) {
										SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
										String subSellerImages[] = subA[k].split("_");
										System.out.println("//// Sub A Length" + subA.length + " " + (subA.length - 1));
										if (k == (subA.length - 1)) {
											String uploadPath = context.getRealPath("/" + subSellerImages[0]);
											File uploadDir = new File(uploadPath);
											if (uploadDir.exists()) {

												File upLoadSubFolder = new File(
														uploadDir + "/" + subSellerImages[1] + "_" + photographerId);
												if (!upLoadSubFolder.exists()) {
													boolean success = upLoadSubFolder.mkdir();
												}

											}
											System.out.println("/////" + subSellerImages[0] + " " + subSellerImages[1] + " "
													+ subSellerImages[2] + " " + subSellerImages[3]);
											File file = new File(context.getRealPath(
													"/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											file.renameTo(new File(
													context.getRealPath("/" + subSellerImages[0] + "/" + subSellerImages[1]
															+ "_" + photographerId + "/" + subSellerImages[2].trim())));
											productImagesVideos
													.setProductImageVideoUrl(subSellerImages[0] + "/" + subSellerImages[1]
															+ "_" + photographerId + "/" + subSellerImages[2].trim());
											productImagesVideos.setPhotoVideo(Boolean.TRUE);
											productImagesVideos.setAllProducts(products);
											productImagesVideos.setId(Long.valueOf(subSellerImages[3]));
											adminResponseClass = sellerProductImagesVideosService
													.fetchSellerProductImagesVideosById(productImagesVideos.getId());
											String path = adminResponseClass.getSellerProductImageVideo()
													.getProductImageVideoUrl();
											adminResponseClass = sellerProductImagesVideosService
													.saveSellerProductImagesVideos(productImagesVideos);
											if (adminResponseClass.isStatus()) {
												File currentFile = new File(context.getRealPath("/" + path));
												currentFile.delete();
											}
										} else {
											File currentFile = new File(context.getRealPath(
													"/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											currentFile.delete();
										}
									}
								}
							}

						} else {
							for (int i = 0; i < productImages.length; i++) {
								SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
								String subProductImages[] = productImages[i].split("_");

								String uploadPath = context.getRealPath("/" + subProductImages[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) {

									File upLoadSubFolder = new File(
											uploadDir + "/" + subProductImages[1] + "_" + photographerId);
									if (!upLoadSubFolder.exists()) {
										boolean success = upLoadSubFolder.mkdir();
									}

								}

								File file = new File(context
										.getRealPath("/" + subProductImages[0] + "/temp/" + subProductImages[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductImages[0] + "/"
										+ subProductImages[1] + "_" + photographerId + "/" + subProductImages[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductImages[0] + "/" + subProductImages[1]
										+ "_" + photographerId + "/" + subProductImages[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.TRUE);
								productImagesVideos.setAllProducts(products);
								adminResponseClass = sellerProductImagesVideosService
										.saveSellerProductImagesVideos(productImagesVideos);
							}
						}

					} else {
						SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
						String productImages[] = objectNode.get("multipleFiles").asText().split("_");

						String uploadPath = context.getRealPath("/" + productImages[0]);
						File uploadDir = new File(uploadPath);
						if (uploadDir.exists()) {

							File upLoadSubFolder = new File(uploadDir + "/" + productImages[1] + "_" + photographerId);
							if (!upLoadSubFolder.exists()) {
								boolean success = upLoadSubFolder.mkdir();
							}
							File file = new File(
									context.getRealPath("/" + productImages[0] + "/temp/" + productImages[2].trim()));
							file.renameTo(new File(context.getRealPath("/" + productImages[0] + "/" + productImages[1] + "_"
									+ photographerId + "/" + productImages[2].trim())));
							productImagesVideos.setProductImageVideoUrl(productImages[0] + "/" + productImages[1] + "_"
									+ photographerId + "/" + productImages[2].trim());
							productImagesVideos.setPhotoVideo(Boolean.TRUE);
							productImagesVideos.setAllProducts(products);
							if (isEdit == 1) {
								productImagesVideos.setId(Long.valueOf(productImages[3]));
								adminResponseClass = sellerProductImagesVideosService
										.fetchSellerProductImagesVideosById(productImagesVideos.getId());
								String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
								adminResponseClass = sellerProductImagesVideosService
										.saveSellerProductImagesVideos(productImagesVideos);
								if (adminResponseClass.isStatus()) {
									File currentFile = new File(context.getRealPath("/" + path));
									currentFile.delete();
								}
							}else{
							adminResponseClass = sellerProductImagesVideosService
									.saveSellerProductImagesVideos(productImagesVideos);
							}

						}
					}
				}
				
				System.out.println("///// Video Files is"+objectNode.get("videoFiles").asInt());
				if (objectNode.get("videoFiles").asInt() != 1) {
					if (objectNode.get("videoFiles").asText().indexOf(",") >= 0) {
						String productVideos[] = objectNode.get("videoFiles").asText().split(",");
						List<String> listString = new ArrayList<String>();
						for (String abc : productVideos) {
							listString.add(abc);
						}
						if (isEdit == 1) {
							String modal = objectNode.get("modalVideoId").asText();
							String[] modalId = modal.split(",");
							for (int i = 0; i < modalId.length; i++) {
								String a = "";
								for (int j = 0; j < productVideos.length; j++) {
									if (productVideos[j].indexOf("_" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = productVideos[j];
											listString.remove(productVideos[j]);

										} else {
											a = a + "," + productVideos[j];
											listString.remove(productVideos[j]);
										}
									}
								}
								Iterator<String> iterator = listString.iterator();
								while (iterator.hasNext()) {
									String strings = iterator.next();
									if (strings.indexOf("_" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = strings;
										} else {
											a = a + "," + strings;
										}
										iterator.remove();
									}

								}
								if (!a.equals("")) {
									String[] subA = a.split(",");
									for (int k = 0; k < subA.length; k++) {
										SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
										String subSellerVideos[] = subA[k].split("_");
										if (k == (subA.length - 1)) {
											String uploadPath = context.getRealPath("/" + subSellerVideos[0]);
											File uploadDir = new File(uploadPath);
											if (uploadDir.exists()) {

												File upLoadSubFolder = new File(
														uploadDir + "/" + subSellerVideos[1] + "_" + photographerId);
												if (!upLoadSubFolder.exists()) {
													boolean success = upLoadSubFolder.mkdir();
												}

											}
											File file = new File(context.getRealPath(
													"/" + subSellerVideos[0] + "/temp/" + subSellerVideos[2].trim()));
											file.renameTo(new File(
													context.getRealPath("/" + subSellerVideos[0] + "/" + subSellerVideos[1]
															+ "_" + photographerId + "/" + subSellerVideos[2].trim())));
											productImagesVideos
													.setProductImageVideoUrl(subSellerVideos[0] + "/" + subSellerVideos[1]
															+ "_" + photographerId + "/" + subSellerVideos[2].trim());
											productImagesVideos.setPhotoVideo(Boolean.FALSE);
											productImagesVideos.setAllProducts(products);
											productImagesVideos.setId(Long.valueOf(subSellerVideos[3]));
											adminResponseClass = sellerProductImagesVideosService
													.fetchSellerProductImagesVideosById(productImagesVideos.getId());
											String path = adminResponseClass.getSellerProductImageVideo()
													.getProductImageVideoUrl();
											adminResponseClass = sellerProductImagesVideosService
													.saveSellerProductImagesVideos(productImagesVideos);
											if (adminResponseClass.isStatus()) {
												File currentFile = new File(context.getRealPath("/" + path));
												currentFile.delete();
											}
										} else {
											File currentFile = new File(context.getRealPath(
													"/" + subSellerVideos[0] + "/temp/" + subSellerVideos[2].trim()));
											currentFile.delete();
										}
									}
								}
							}

						} else {
							for (int i = 0; i < productVideos.length; i++) {
								SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
								String subProductVideos[] = productVideos[i].split("_");

								String uploadPath = context.getRealPath("/" + subProductVideos[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) {

									File upLoadSubFolder = new File(
											uploadDir + "/" + subProductVideos[1] + "_" + photographerId);
									if (!upLoadSubFolder.exists()) {
										boolean success = upLoadSubFolder.mkdir();
									}

								}

								File file = new File(context
										.getRealPath("/" + subProductVideos[0] + "/temp/" + subProductVideos[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductVideos[0] + "/"
										+ subProductVideos[1] + "_" + photographerId + "/" + subProductVideos[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductVideos[0] + "/" + subProductVideos[1]
										+ "_" + photographerId + "/" + subProductVideos[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.FALSE);
								productImagesVideos.setAllProducts(products);
								adminResponseClass = sellerProductImagesVideosService
										.saveSellerProductImagesVideos(productImagesVideos);
							}
						}
					} else {
						SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
						String productVideos[] = objectNode.get("videoFiles").asText().split("_");

						String uploadPath = context.getRealPath("/" + productVideos[0]);
						File uploadDir = new File(uploadPath);
						if (uploadDir.exists()) {

							File upLoadSubFolder = new File(uploadDir + "/" + productVideos[1] + "_" + photographerId);
							if (!upLoadSubFolder.exists()) {
								boolean success = upLoadSubFolder.mkdir();
							}
							File file = new File(
									context.getRealPath("/" + productVideos[0] + "/temp/" + productVideos[2].trim()));
							file.renameTo(new File(context.getRealPath("/" + productVideos[0] + "/" + productVideos[1] + "_"
									+ photographerId + "/" + productVideos[2].trim())));
							productImagesVideos.setProductImageVideoUrl(productVideos[0] + "/" + productVideos[1] + "_"
									+ photographerId + "/" + productVideos[2].trim());
							productImagesVideos.setPhotoVideo(Boolean.FALSE);
							productImagesVideos.setAllProducts(products);
							if (isEdit == 1) {
								productImagesVideos.setId(Long.valueOf(productVideos[3]));
								adminResponseClass = sellerProductImagesVideosService
										.fetchSellerProductImagesVideosById(productImagesVideos.getId());
								String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
								adminResponseClass = sellerProductImagesVideosService
										.saveSellerProductImagesVideos(productImagesVideos);
								if (adminResponseClass.isStatus()) {
									File currentFile = new File(context.getRealPath("/" + path));
									currentFile.delete();
								}
							}
							adminResponseClass = sellerProductImagesVideosService
									.saveSellerProductImagesVideos(productImagesVideos);
						}

					}

				}

				System.out.println("////Admin Response Class is" + adminResponseClass.isStatus());
			}

			System.out.println("//// Price is " + objectNode.get("fromDate"));
			if (adminResponseClass.isStatus() && (objectNode.get("fromDate") != null)) {
				System.out.println("////Inside there reh");
				// SellerProductPricing Entry
				SellerProductPricing sellerProductPricing = new SellerProductPricing();
				sellerProductPricing
						.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDate").asText()));
				sellerProductPricing
						.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDate").asText()));
				sellerProductPricing.setPrice(objectNode.get("price").asDouble());
				sellerProductPricing.setAllProducts(products);
				adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricing);

				if (objectNode.get("otherPriceDetails") != null) {
					if (objectNode.get("otherPriceDetails").asText().indexOf("_") >= 0) {
						String productPricings[] = objectNode.get("otherPriceDetails").asText().split("_");
						for (int i = 0; i < productPricings.length; i++) {
							String subProductPricings[] = productPricings[i].split(",");
							SellerProductPricing sellerProductPricings = new SellerProductPricing();
							sellerProductPricings
									.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[0]));
							sellerProductPricings
									.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[1]));
							sellerProductPricings.setPrice(Double.valueOf(subProductPricings[2]));
							sellerProductPricings.setAllProducts(products);
							adminResponseClass = sellerProductPricingService
									.saveSellerProductPricing(sellerProductPricings);
						}
					} else {
						String productPricings[] = objectNode.get("otherPriceDetails").asText().split(",");
						SellerProductPricing sellerProductPricings = new SellerProductPricing();
						sellerProductPricings
								.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[0]));
						sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[1]));
						sellerProductPricings.setPrice(Double.valueOf(productPricings[2]));
						sellerProductPricings.setAllProducts(products);
						adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
					}
				}
			}

			System.out.println("///Title Length  is" + objectNode.get("titleLength"));
			if (adminResponseClass.isStatus()) {
				if (!objectNode.get("titleLength").asText().equals("same")) {
					if (objectNode.get("photographyOccasionName").asText().indexOf(",") >= 0) {
						String photographyOccasionNames[] = objectNode.get("photographyOccasionName").asText().split(",");
						for (int i = 0; i < photographyOccasionNames.length; i++) {
							SellerPhotographyOccasion sellerPhotographyOccasion = new SellerPhotographyOccasion();
							sellerPhotographyOccasion.setAllProducts(products);
							if (objectNode.get("titleLength").asText().equals("minus")) {
								adminResponseClass = sellerPhotographyOccasionService.deleteSellerPhotographyOccasionByAllProductsAndOccasionId(sellerPhotographyOccasion.getAllProducts().getId(),Long.valueOf(Long.valueOf(photographyOccasionNames[i])));
							} else {
								adminResponseClass = photographyOccasionService.fetchPhotographyOccasionById(Long.valueOf(photographyOccasionNames[i]));
								sellerPhotographyOccasion.setPhotographyOccasion(adminResponseClass.getPhotographyOccasion());
								adminResponseClass = sellerPhotographerService.fetchPhotographyProductsByIdForAddEdit(photographerId);
								sellerPhotographyOccasion.setSellerPhotographer(adminResponseClass.getSellerPhotographer());
								adminResponseClass = sellerPhotographyOccasionService.saveSellerPhotographyOccasion(sellerPhotographyOccasion, isEdit);
							}

						}
					} else {
						SellerPhotographyOccasion sellerPhotographyOccasion = new SellerPhotographyOccasion();
						String photographyOccasionName = objectNode.get("photographyOccasionName").asText();
						sellerPhotographyOccasion.setAllProducts(products);
						if (objectNode.get("titleLength").asText().equals("minus")) {
							adminResponseClass = sellerPhotographyOccasionService.deleteSellerPhotographyOccasionByAllProductsAndOccasionId(sellerPhotographyOccasion.getAllProducts().getId(),Long.valueOf(photographyOccasionName));
						} else {
							adminResponseClass = photographyOccasionService
									.fetchPhotographyOccasionById(Long.valueOf(photographyOccasionName));
							sellerPhotographyOccasion.setPhotographyOccasion(adminResponseClass.getPhotographyOccasion());
							adminResponseClass = sellerPhotographerService.fetchPhotographyProductsByIdForAddEdit(photographerId);
							sellerPhotographyOccasion.setSellerPhotographer(adminResponseClass.getSellerPhotographer());
							adminResponseClass = sellerPhotographyOccasionService.saveSellerPhotographyOccasion(sellerPhotographyOccasion, isEdit);
						}

					}
				}
			}
			if ((objectNode.get("hasValue").asInt() == 1) && (adminResponseClass.isStatus())) {
				SellerDiscount sellerDiscount = new SellerDiscount();
				sellerDiscount.setFromDateDiscount(
						new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDateDiscount").asText()));
				sellerDiscount.setToDateDiscount(
						new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDateDiscount").asText()));
				sellerDiscount.setDiscount(objectNode.get("discount").asDouble());
				if (objectNode.get("isFlat").asInt() == 1) {
					sellerDiscount.setFlatDiscount(Boolean.TRUE);
				} else {
					sellerDiscount.setFlatDiscount(Boolean.FALSE);
				}
				sellerDiscount.setAllProducts(products);
				adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
			}
			System.out.println("/////AdminResponseClass is" + adminResponseClass.isStatus());
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyProducts", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyProducts() throws ParseException{
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerPhotographerService.fetchAllPhotographyProducts();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-fetchPhotographerById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographerById(@RequestParam("id") String id) throws ParseException{
		if((SellerDetails)httpSession.getAttribute("sellerDetailsSession") == null)
			return null;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(id,((SellerDetails)httpSession.getAttribute("sellerDetailsSession")).getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-checkSellerPricings", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass checkSellerPricings(@RequestBody SellerProductPricing productPricing) throws ParseException{
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerProductPricingService.checkSellerPricings(productPricing);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-checkSellerDiscounts", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass checkSellerDiscounts(@RequestBody SellerDiscount sellerDiscount) throws ParseException{
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = sellerDiscountService.checkSellerDiscounts(sellerDiscount);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Flower Product*/
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	@RequestMapping(value = "/admin-addEditFlower", method = RequestMethod.POST)
	public @ResponseBody boolean addEditFlower(@RequestBody ObjectNode objectNode, BindingResult bindingResult, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			String flowerId = "";
			AllProducts products = new AllProducts();
			String categoryName;
			// All Products Entry
			System.out.println("////Edit Product Id" + objectNode.get("editProductId").asText());
			if (!(objectNode.get("editProductId").asText().equals(""))) {
				products.setId(objectNode.get("allProductId").asLong());
				adminResponseClass.setStatus(Boolean.TRUE);
			} 
				System.out.println("///In else");
				categoryName = AllCategoryNames.getCategoryName(objectNode.get("categoryName").asText());
				adminResponseClass = categoryAvailableService.fetchCategoryByCategoryNameWithStatus(categoryName);
		
			if (adminResponseClass.isStatus()) {
				products.setCategoryAvailable(adminResponseClass.getCategoryAvailable());
				SellerDetails sellerDetails = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
				products.setSellerDetails(sellerDetails);
				adminResponseClass = allProductsService.saveAllProducts(products);
			}

			System.out.println("////All Products id" + products.getId());
			
			// Flower Product Entry
			if (adminResponseClass.isStatus()) {
				Flower flower = new Flower();
				if (objectNode.get("editProductId").asText().equals("")) {
					adminResponseClass = flowerService.findLastFlowerId();
					if (adminResponseClass.getLastId().equals("0")) {
						String id = new CreateId().IdGeneration("FLR0");
						flower.setId(id);
						flowerId = id;
					} else {
						String id = new CreateId().IdGeneration(adminResponseClass.getLastId());
						if (!(id.equals("No Id Found"))) {
							flower.setId(id);
							flowerId = id;
						}
					}
					flower.setStatus(Boolean.TRUE);
				} else {
					flower.setId(objectNode.get("editProductId").asText());
					flowerId = objectNode.get("editProductId").asText();
					if(objectNode.get("productStatus").asText().equals("Active")){
						flower.setStatus(Boolean.TRUE);
					}
					else{
						flower.setStatus(Boolean.FALSE);
					}

				}

				flower.setName(objectNode.get("name").asText());
				adminResponseClass = productTypeService.fetchProductTypeByIdWithStatus(objectNode.get("typeName").asLong());
				flower.setProductType(adminResponseClass.getProductType());
				flower.setDescription(objectNode.get("description").asText());
				flower.setColor(objectNode.get("color").asText());
				flower.setNoOfPieces(objectNode.get("noOfPieces").asInt());
				flower.setAdvancePaymentPercentage(objectNode.get("advancePaymentPercentage").asDouble());
				
					if(objectNode.get("availability").asText().trim().equalsIgnoreCase("Yes"))
						flower.setAvailability(Boolean.TRUE);
					else 
						flower.setAvailability(Boolean.FALSE);
				
				if(objectNode.get("freebie") != null){
					flower.setFreebie(objectNode.get("freebie").asText());
				}
				if (objectNode.get("singleFiles").asText().indexOf("@*") >= 0) {
					String abc[] = objectNode.get("singleFiles").asText().trim().split("@\\*");
					System.out.println("///SingleFiles is" + abc[0] + " " + abc[1]);
					flower.setDpUrl(abc[1]);
				}
				else
				{
					String dpImages[] = objectNode.get("singleFiles").asText().trim().split("-,@_");
					ServletContext context = request.getServletContext();
					for(int i = 0; i<dpImages.length;i++){
						String image[] = dpImages[i].split("\\+@-");
						if (i == (dpImages.length - 1)) {
							String uploadPath = context.getRealPath("/" + image[0]);
							File uploadDir = new File(uploadPath);
							if (uploadDir.exists()) 
							{
								File upLoadSubFolder = new File(uploadDir + "/" + image[1] + "+@-"+flower.getId());
								if (!upLoadSubFolder.exists()) {
									boolean success = upLoadSubFolder.mkdir();
								}
							}
							File file = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							System.out.println("////File is" + file);
							file.renameTo(new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + flower.getId() + "/"+ image[2].trim())));
							System.out.println("////Rename file is" + new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + flower.getId() + "/"+ image[2].trim())));
							flower.setDpUrl(image[0] + "/" + image[1]+ "+@-" + flower.getId() + "/"+ image[2].trim());
						}
						else
						{
							File currentFile = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							currentFile.delete();
						}
					}
				}
				flower.setAllProducts(products);
				adminResponseClass = flowerService.saveFlower(flower);

			}
			int isEdit = 0;
			if (!objectNode.get("editProductId").asText().equals("")) {
				isEdit = 1;
			}

			// SellerProductImagesVideos Entry
			if (adminResponseClass.isStatus()) {
				ServletContext context = request.getServletContext();
				if (objectNode.get("multipleFiles").asInt() != 1) {
					if (objectNode.get("multipleFiles").asText().indexOf("-,@_") >= 0) {
						String productImages[] = objectNode.get("multipleFiles").asText().split("-,@_");
						List<String> listString = new ArrayList<String>();
						for (String abc : productImages) {
							listString.add(abc);
						}
						if (isEdit == 1) {
							String modal = objectNode.get("modelId").asText();
							String[] modalId = modal.split("-,@_");
							for (int i = 0; i < modalId.length; i++) {
								String a = "";
								Iterator<String> iterator = listString.iterator();
								while (iterator.hasNext()) {
									String strings = iterator.next();
									if (strings.indexOf("\\+@-" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = strings;
										} else {
											a = a + "-,@_" + strings;
										}
										iterator.remove();
									}

								}
								if (!a.equals("")) {
									String[] subA = a.split("-,@_");
									for (int k = 0; k < subA.length; k++) {
										SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
										String subSellerImages[] = subA[k].split("+@-");
										System.out.println("//// Sub A Length" + subA.length + " " + (subA.length - 1));
										if (k == (subA.length - 1)) {
											String uploadPath = context.getRealPath("/" + subSellerImages[0]);
											File uploadDir = new File(uploadPath);
											if (uploadDir.exists()) 
											{

												File upLoadSubFolder = new File(uploadDir + "/" + subSellerImages[1] + "+@-" + flowerId);
												if (!upLoadSubFolder.exists())
												{
													boolean success = upLoadSubFolder.mkdir();
												}

											}
											System.out.println("/////" + subSellerImages[0] + " " + subSellerImages[1] + " " + subSellerImages[2] + " " + subSellerImages[3]);
											File file = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											file.renameTo(new File(context.getRealPath("/" + subSellerImages[0] + "/" + subSellerImages[1] + "+@-" + flowerId + "/" + subSellerImages[2].trim())));
											productImagesVideos.setProductImageVideoUrl(subSellerImages[0] + "/" + subSellerImages[1]+ "+@-" + flowerId + "/" + subSellerImages[2].trim());
											productImagesVideos.setPhotoVideo(Boolean.TRUE);
											productImagesVideos.setAllProducts(products);
											productImagesVideos.setId(Long.valueOf(subSellerImages[3]));
											adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
											String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
											adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
											if (adminResponseClass.isStatus()) {
												File currentFile = new File(context.getRealPath("/" + path));
												currentFile.delete();
											}
										} else {
											File currentFile = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											currentFile.delete();
										}
									}
								}
							}

						} else {
							for (int i = 0; i < productImages.length; i++) {
								SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
								String subProductImages[] = productImages[i].split("\\+@-");

								String uploadPath = context.getRealPath("/" + subProductImages[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) 
								{
									File upLoadSubFolder = new File(uploadDir + "/" + subProductImages[1] + "+@-" + flowerId);
									if (!upLoadSubFolder.exists()) 
									{
										boolean success = upLoadSubFolder.mkdir();
									}

								}
								System.out.println("//// File path is"+subProductImages[0]+" "+subProductImages[1]+" "+subProductImages[2]);
								File file = new File(context.getRealPath("/" + subProductImages[0] + "/temp/" + subProductImages[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductImages[0] + "/" + subProductImages[1] + "+@-" + flowerId + "/" + subProductImages[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductImages[0] + "/" + subProductImages[1] + "+@-" + flowerId + "/" + subProductImages[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.TRUE);
								productImagesVideos.setAllProducts(products);
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}
						}

					}
					else 
					{
						SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
						String productImages[] = objectNode.get("multipleFiles").asText().split("\\+@-");

						String uploadPath = context.getRealPath("/" + productImages[0]);
						File uploadDir = new File(uploadPath);
						if (uploadDir.exists()) 
						{

							File upLoadSubFolder = new File(uploadDir + "/" + productImages[1] + "+@-" + flowerId);
							if (!upLoadSubFolder.exists()) 
							{
								boolean success = upLoadSubFolder.mkdir();
							}
							File file = new File(context.getRealPath("/" + productImages[0] + "/temp/" + productImages[2].trim()));
							file.renameTo(new File(context.getRealPath("/" + productImages[0] + "/" + productImages[1] + "+@-" + flowerId + "/" + productImages[2].trim())));
							productImagesVideos.setProductImageVideoUrl(productImages[0] + "/" + productImages[1] + "+@-" + flowerId + "/" + productImages[2].trim());
							productImagesVideos.setPhotoVideo(Boolean.TRUE);
							productImagesVideos.setAllProducts(products);
							if (isEdit == 1) 
							{
								productImagesVideos.setId(Long.valueOf(productImages[3]));
								adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
								String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
								if (adminResponseClass.isStatus()) 
								{
									File currentFile = new File(context.getRealPath("/" + path));
									currentFile.delete();
								}
							}
							else
							{
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}

						}
					}
				}
				System.out.println("////Admin Response Class after image insert: " + adminResponseClass.isStatus());
			}

			// SellerProductPricing Entry
			System.out.println("//// Price is " + objectNode.get("fromDate"));
			if (adminResponseClass.isStatus() && (objectNode.get("fromDate") != null)) {
				System.out.println("////Inside there reh");
				SellerProductPricing sellerProductPricing = new SellerProductPricing();
				sellerProductPricing.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDate").asText()));
				sellerProductPricing.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDate").asText()));
				sellerProductPricing.setPrice(objectNode.get("price").asDouble());
				sellerProductPricing.setAllProducts(products);
				//adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(photographerId);
				adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricing);

				if (objectNode.get("otherPriceDetails") != null) {
					if (objectNode.get("otherPriceDetails").asText().indexOf("_") >= 0) {
						String productPricings[] = objectNode.get("otherPriceDetails").asText().split("_");
						for (int i = 0; i < productPricings.length; i++) {
							String subProductPricings[] = productPricings[i].split(",");
							SellerProductPricing sellerProductPricings = new SellerProductPricing();
							sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[0]));
							sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[1]));
							sellerProductPricings.setPrice(Double.valueOf(subProductPricings[2]));
							sellerProductPricings.setAllProducts(products);
							adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
						}
					} else {
						String productPricings[] = objectNode.get("otherPriceDetails").asText().split(",");
						SellerProductPricing sellerProductPricings = new SellerProductPricing();
						sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[0]));
						sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[1]));
						sellerProductPricings.setPrice(Double.valueOf(productPricings[2]));
						sellerProductPricings.setAllProducts(products);
						adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
					}
				}
			}

			//Interminiate-Product-Occasion Table Entry
			System.out.println("///Occasion Id are" + objectNode.get("occasion").asText().trim());
			if (adminResponseClass.isStatus()) {
				if (!(objectNode.get("titleLength").asText().trim().equals("same"))) {
					System.out.println("//// In occasion if");
					List<IntProductOccasion> listIntProductOccasion = occasionService.fetchAllIntProductOccByAllProductId(products.getId()).getListIntProductOccasion();
					if(listIntProductOccasion != null){
						for(int p=0;p<listIntProductOccasion.size();p++)
						{
							listIntProductOccasion.get(p).setStatus(Boolean.FALSE);
							occasionService.saveIntProductOcc(listIntProductOccasion.get(p));
						}
						
					}
					
					String occasionNames[] = objectNode.get("occasion").asText().trim().split(",");
					for(int i = 0; i< occasionNames.length; i++)
					{
						if(listIntProductOccasion != null) {
							boolean found = false;
							for (int j = 0; j < listIntProductOccasion.size(); j++) {
								if (listIntProductOccasion.get(j).getOccasion().getId() == Long.parseLong(occasionNames[i])) {
									listIntProductOccasion.get(j).setStatus(Boolean.TRUE);
									occasionService.saveIntProductOcc(listIntProductOccasion.get(j));
									found = true;
									break;
								}
							}
							if(!found)
							{
								IntProductOccasion ipo = new IntProductOccasion();
								ipo.setAllProducts(products);
								ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
								ipo.setStatus(Boolean.TRUE);
								occasionService.saveIntProductOcc(ipo);
							}
						}else{
							IntProductOccasion ipo = new IntProductOccasion();
							ipo.setAllProducts(products);
							ipo.setStatus(Boolean.TRUE);
							ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
							occasionService.saveIntProductOcc(ipo);
						}
					}
				}
				//System.out.println("////Admin Response Class after IntProductOccasion insert: " + adminResponseClass.isStatus());
			}

			//DiscountDetails Entry to SellerDiscount Table
			if ((objectNode.get("hasValue").asInt() == 1) && (adminResponseClass.isStatus())) {
				SellerDiscount sellerDiscount = new SellerDiscount();
				sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDateDiscount").asText()));
				sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDateDiscount").asText()));
				sellerDiscount.setDiscount(objectNode.get("discount").asDouble());
				if (objectNode.get("isFlat").asInt() == 1) {
					sellerDiscount.setFlatDiscount(Boolean.TRUE);
				} else {
					sellerDiscount.setFlatDiscount(Boolean.FALSE);
				}
				sellerDiscount.setAllProducts(products);
				adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
				
				/*//otherDiscountDetails Entry to SellerDiscount Table
				if ((objectNode.get("otherDiscountDetails").asText() != null) && (adminResponseClass.isStatus()))
				{
					if (objectNode.get("otherDiscountDetails").asText().indexOf("_") >= 0) {
						String productDiscounts[] = objectNode.get("otherDiscountDetails").asText().split("_");
						for (int i = 0; i < productDiscounts.length; i++) 
						{
							//System.out.print("\\\\Other Single Dis"+productDiscounts[i]);
							String attribute[] = productDiscounts[i].split(",");
							sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(attribute[0].trim()));
							sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(attribute[1].trim()));
							sellerDiscount.setDiscount(Double.parseDouble(attribute[2].trim()));
							if (Integer.parseInt(attribute[3].trim()) == 1) {
								sellerDiscount.setFlatDiscount(Boolean.TRUE);
							} else {
								sellerDiscount.setFlatDiscount(Boolean.FALSE);
							}
							//sellerDiscount.setAllProducts(products);
							adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
						}
					}
					else
					{
						String attribute[] = objectNode.get("otherDiscountDetails").asText().trim().split(",");
						sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(attribute[0].trim()));
						sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(attribute[1].trim()));
						sellerDiscount.setDiscount(Double.parseDouble(attribute[2].trim()));
						if (Integer.parseInt(attribute[3].trim()) == 1) {
							sellerDiscount.setFlatDiscount(Boolean.TRUE);
						} else {
							sellerDiscount.setFlatDiscount(Boolean.FALSE);
						}
						//sellerDiscount.setAllProducts(products);
						adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
					}
				}*/
			}
			//System.out.println("////Admin Response Class after discount insert: " + adminResponseClass.isStatus());
			
			//For freeProduct Insert
			if(adminResponseClass.isStatus())
			{
				if (objectNode.get("freeProduct") != null)
				{
					if (objectNode.get("freeProduct").asText().indexOf(",") >= 0)
					{
						String freeProductIds[] = objectNode.get("freeProduct").asText().trim().split(",");
						String freeProductQtys[] = objectNode.get("freeProductQty").asText().trim().split(",");
						String freeProductvalidities[] = objectNode.get("freeProductValidity").asText().trim().split(",");
						
						for(int i=0;i<freeProductIds.length;i++)
						{
							FreesProduct freesProduct = new FreesProduct();
							AdminResponseClass singleProduct = new AdminResponseClass();
							singleProduct = allProductsService.fetchAllProductByIdAndSeller(Integer.parseInt(freeProductIds[i].trim()), products.getSellerDetails().getId());	
							
							freesProduct.setToId(singleProduct.getAllProducts());
							freesProduct.setWithId(products);
							freesProduct.setQty(Integer.parseInt(freeProductQtys[i].trim()));
							freesProduct.setValidTo(new SimpleDateFormat("yyyy-MM-dd").parse(freeProductvalidities[i].trim()));
							freesProduct.setStatus(Boolean.TRUE);
							if(singleProduct.isStatus())
							{
								adminResponseClass = freesProductService.saveFreesProduct(freesProduct);
								adminResponseClass.setMssgStatus("Free Product Successfully Inserted");
							}
						}
					}
					else
					{
						FreesProduct freesProduct = new FreesProduct();
						AdminResponseClass singleProduct = new AdminResponseClass();
						singleProduct = allProductsService.fetchAllProductByIdAndSeller(Integer.parseInt(objectNode.get("freeProduct").asText().trim()), products.getSellerDetails().getId());
						
						freesProduct.setToId(singleProduct.getAllProducts());
						freesProduct.setWithId(products);
						freesProduct.setQty(Integer.parseInt(objectNode.get("freeProductQty").asText().trim().trim()));
						freesProduct.setValidTo(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("freeProductValidity").asText().trim()));
						freesProduct.setStatus(Boolean.TRUE);
						if(singleProduct.isStatus())
						{
							adminResponseClass = freesProductService.saveFreesProduct(freesProduct);
							adminResponseClass.setMssgStatus("Free Product Successfully Inserted");
						}
					}
				}
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllFlowerProductsById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFlowerProductsById() throws ParseException {
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = flowerService.fetchAllFlowerProductsById((SellerDetails)httpSession.getAttribute("sellerDetailsSession"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	//Not Using Anywhere
	@RequestMapping(value = "/fetchAllFlowerById", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass fetchAllFlowerById(@RequestBody String sellerId, String allProductId, String flowerId) 
	{
		AdminResponseClass adminResponseClass = flowerService.fetchAllFlowerById(sellerId, allProductId, flowerId);
		return adminResponseClass;

	}
	
	@RequestMapping(value="/admin-fetchFlowerByFlowerId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFlowerByFlowerId(@RequestParam("id") String id) throws ParseException {
		if((SellerDetails)httpSession.getAttribute("sellerDetailsSession") == null)
			return null;
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = flowerService.fetchFlowerByFlowerId(id,((SellerDetails)httpSession.getAttribute("sellerDetailsSession")).getId());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	@RequestMapping(value="/admin-fetchAllSellerProducts", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSellerProducts() throws ParseException {
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = flowerService.fetchAllSellerProducts((SellerDetails)httpSession.getAttribute("sellerDetailsSession"));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	@RequestMapping(value="/admin-fetchAllProductsBySeller", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllProductsBySeller()
	{
	   AdminResponseClass adminResponseClass = new AdminResponseClass();
	try {
		adminResponseClass = freesProductService.fetchAllProductBySellerId((SellerDetails)httpSession.getAttribute("sellerDetailsSession"));
	} catch (Exception e) {
		
		e.printStackTrace();
	}
		return adminResponseClass;
	}
	
	/*For Food Type*/
	@RequestMapping(value = "/admin-addEditFoodType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditFoodType(@RequestBody ObjectNode objectNode) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(objectNode.get("foodTypeDetails").asText().indexOf("-,@_") >=0){
				String subFoodType[] = objectNode.get("foodTypeDetails").asText().split("-,@_");
				for(int i =0; i<subFoodType.length; i++){
					String foodType[] = subFoodType[i].split("_@.");
					FoodType foodType2 = new FoodType();
					foodType2.setName(foodType[0]);
					if (foodType.length != 1) {
						foodType2.setDescription(foodType[1]);
					}
					foodType2.setStatus(Boolean.TRUE);
					adminResponseClass = foodTypeService.saveFoodType(foodType2);
				}
			}else{
				String foodType[] = objectNode.get("foodTypeDetails").asText().split("_@.");
				FoodType foodType2 = new FoodType();
				foodType2.setName(foodType[0]);
				if(foodType.length != 1){
					foodType2.setDescription(foodType[1]);
				}
				if(objectNode.get("editFoodTypeId").asLong() != 0){
					foodType2.setId(objectNode.get("editFoodTypeId").asLong());
					if(objectNode.get("typeStatusSelect").asText().equalsIgnoreCase("Active")){
						foodType2.setStatus(Boolean.TRUE);
					}else{
						foodType2.setStatus(Boolean.FALSE);
					}
				}else{
					foodType2.setStatus(Boolean.TRUE);
				}
				
			    adminResponseClass = foodTypeService.saveFoodType(foodType2);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllFoodTypes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFoodTypes() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodTypeService.fetchAllFoodTypes();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchAllFoodTypesWithStatus", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFoodTypesWithStatus() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodTypeService.fetchAllFoodTypesWithStatus();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchFoodTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFoodTypeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodTypeService.fetchFoodTypeById(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchFoodTypeByIdWithStatus", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFoodTypeByIdWithStatus(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodTypeService.fetchFoodTypeByIdWithStatus(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Food*/
	@RequestMapping(value = "/admin-addEditFood", method = RequestMethod.POST)
	public @ResponseBody boolean addEditFood(@RequestBody ObjectNode objectNode) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		
		try {
			if(objectNode.get("foodDetails").asText().trim().contains("-,@_") && !objectNode.get("foodDetails").asText().trim().equals(""))
			{
				String foodDetails[] = objectNode.get("foodDetails").asText().trim().split("-,@_");
				for(String foodDetail : foodDetails)
				{
					String foodEntity[] = foodDetail.split("_@.");
					Food food = new Food();
					food.setFoodType(foodTypeService.fetchFoodTypeByIdWithStatus(Long.parseLong(objectNode.get("typeId").asText().trim())).getFoodType());
					food.setName(foodEntity[0].trim());
					food.setPrice(Double.parseDouble(foodEntity[1].trim()));
					food.setVeg(Boolean.parseBoolean(foodEntity[2].trim()));
					if(foodEntity.length > 3)
						food.setDescription(foodEntity[3].trim());
					food.setSellerDetails((SellerDetails) httpSession.getAttribute("sellerDetailsSession"));
					food.setStatus(Boolean.TRUE);
					adminResponseClass = foodService.saveFood(food);
				}
			}
			else if(!objectNode.get("foodDetails").asText().trim().equals(""))
			{
				String foodEntity[] = objectNode.get("foodDetails").asText().trim().split("_@.");
				Food food = new Food();
				if(Long.parseLong(objectNode.get("editFoodId").asText().trim()) != 0)
					food.setId(Long.parseLong(objectNode.get("editFoodId").asText().trim()));
				food.setFoodType(foodTypeService.fetchFoodTypeByIdWithStatus(Long.parseLong(objectNode.get("typeId").asText().trim())).getFoodType());
				food.setName(foodEntity[0].trim());
				food.setPrice(Double.parseDouble(foodEntity[1].trim()));
				food.setVeg(Boolean.parseBoolean(foodEntity[2].trim()));
				if(foodEntity.length > 3)
					food.setDescription(foodEntity[3].trim());
				food.setSellerDetails((SellerDetails) httpSession.getAttribute("sellerDetailsSession"));
				food.setStatus(Boolean.TRUE);
				adminResponseClass = foodService.saveFood(food);
			}
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllFoodsBySeller", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFoodsBySeller() {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodService.fetchAllFoodBySeller((SellerDetails) httpSession.getAttribute("sellerDetailsSession"));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchFoodById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFoodById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodService.fetchFoodById(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchFoodByIdWithStatus", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFoodByIdWithStatus(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodService.fetchFoodByIdWithStatus(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-fetchFoodByTypeIdWithStatus", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFoodByTypeIdWithStatus(@RequestParam("typeId") long typeId) {
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = foodService.fetchFoodByTypeIdWithStatus((SellerDetails) httpSession.getAttribute("sellerDetailsSession"), typeId);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return adminResponseClass;
	}
	
	/*For Caterer Product*/
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	@RequestMapping(value = "/admin-addEditCaterer", method = RequestMethod.POST)
	public @ResponseBody boolean addEditCaterer(@RequestBody ObjectNode objectNode, BindingResult bindingResult, HttpServletRequest request) 
	{
		String catererId = "";
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		AllProducts allProduct = new AllProducts();
		String categoryName;
		// All Products Entry
		System.out.println("////Edit Product Id" + objectNode.get("editProductId").asText().trim());
		try 
		{
			if (!(objectNode.get("editProductId").asText().trim().equals(""))) {
				allProduct.setId(Long.parseLong(objectNode.get("allProductId").asText().trim()));
				adminResponseClass.setStatus(Boolean.TRUE);
			}
				System.out.println("///In else");
				categoryName = AllCategoryNames.getCategoryName(objectNode.get("categoryName").asText().trim());
				adminResponseClass = categoryAvailableService.fetchCategoryByCategoryNameWithStatus(categoryName);
				
				if (adminResponseClass.isStatus()) {
				allProduct.setCategoryAvailable(adminResponseClass.getCategoryAvailable());
				SellerDetails sellerDetails = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
				allProduct.setSellerDetails(sellerDetails);
				adminResponseClass = allProductsService.saveAllProducts(allProduct);
			}
	
			System.out.println("////All Products id" + allProduct.getId());
			
			// Caterer Product Entry
			if (adminResponseClass.isStatus()) {
				Caterer caterer = new Caterer();
				if (objectNode.get("editProductId").asText().trim().equals("")) {
					adminResponseClass = catererService.findLastCatererId();
					if (adminResponseClass.getLastId().equals("0")) {
						String id = new CreateId().IdGeneration("CTR0");
						caterer.setId(id);
						catererId = id;
					} else {
						String id = new CreateId().IdGeneration(adminResponseClass.getLastId());
						if (!(id.equals("No Id Found"))) {
							caterer.setId(id);
							catererId = id;
						}
						else
						{
							return false;
						}
					}
					caterer.setStatus(Boolean.TRUE);
				} else {
					caterer.setId(objectNode.get("editProductId").asText().trim());
					catererId = objectNode.get("editProductId").asText().trim();
					if(objectNode.get("productStatus") == null && objectNode.get("productStatus").asText().trim().equals("Active")){
						caterer.setStatus(Boolean.TRUE);
					}
					else{
						caterer.setStatus(Boolean.FALSE);
					}
	
				}
	
				caterer.setName(objectNode.get("name").asText().trim());
				adminResponseClass = productTypeService.fetchProductTypeByIdWithStatus(Long.parseLong(objectNode.get("typeName").asText().trim()));
				caterer.setProductType(adminResponseClass.getProductType());
				caterer.setDescription(objectNode.get("description").asText().trim());
				caterer.setNoOfMember(Integer.parseInt(objectNode.get("noOfMembers").asText().trim()));
				caterer.setAdvancePaymentPercentage(Double.parseDouble(objectNode.get("advancePaymentPercentage").asText().trim()));
				
				if(objectNode.get("availability").asText().trim().equalsIgnoreCase("Yes"))
					caterer.setAvailability(Boolean.TRUE);
				else 
					caterer.setAvailability(Boolean.FALSE);
				
				if(objectNode.get("freebie") != null || !objectNode.get("freebie").asText().trim().equals("")){
					caterer.setFreebie(objectNode.get("freebie").asText().trim());
				}
				
				if (objectNode.get("singleFiles").asText().indexOf("@*") >= 0) {
					String abc[] = objectNode.get("singleFiles").asText().trim().split("@\\*");
					System.out.println("///SingleFiles is" + abc[0] + " " + abc[1]);
					caterer.setDpUrl(abc[1]);
				}
				else
				{
					String dpImages[] = objectNode.get("singleFiles").asText().trim().split("-,@_");
					ServletContext context = request.getServletContext();
					for(int i = 0; i<dpImages.length;i++){
						String image[] = dpImages[i].split("\\+@-");
						if (i == (dpImages.length - 1)) {
							String uploadPath = context.getRealPath("/" + image[0]);
							File uploadDir = new File(uploadPath);
							if (uploadDir.exists()) 
							{
								File upLoadSubFolder = new File(uploadDir + "/" + image[1] + "+@-"+caterer.getId());
								if (!upLoadSubFolder.exists()) {
									boolean success = upLoadSubFolder.mkdir();
								}
							}
							File file = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							System.out.println("////File is" + file);
							file.renameTo(new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + caterer.getId() + "/"+ image[2].trim())));
							System.out.println("////Rename file is" + new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + caterer.getId() + "/"+ image[2].trim())));
							caterer.setDpUrl(image[0] + "/" + image[1]+ "+@-" + caterer.getId() + "/"+ image[2].trim());
						}
						else
						{
							File currentFile = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							currentFile.delete();
						}
					}
				}
				if(objectNode.get("foodName") != null && !objectNode.get("foodName").asText().trim().equals(""))
					caterer.setPackage(Boolean.TRUE);
				else
					caterer.setPackage(Boolean.FALSE);
				
				caterer.setAllProducts(allProduct);
				adminResponseClass = catererService.saveCaterer(caterer);
	
			}
			int isEdit = 0;
			if (!objectNode.get("editProductId").asText().trim().equals("")) {
				isEdit = 1;
			}
	
			// SellerProductImagesVideos Entry
			if (adminResponseClass.isStatus()) {
				ServletContext context = request.getServletContext();
				if (objectNode.get("multipleFiles").asInt() != 1) {
					if (objectNode.get("multipleFiles").asText().indexOf("-,@_") >= 0) {
						String productImages[] = objectNode.get("multipleFiles").asText().split("-,@_");
						List<String> listString = new ArrayList<String>();
						for (String abc : productImages) {
							listString.add(abc);
						}
						if (isEdit == 1) {
							String modal = objectNode.get("modelId").asText();
							String[] modalId = modal.split("-,@_");
							for (int i = 0; i < modalId.length; i++) {
								String a = "";
								Iterator<String> iterator = listString.iterator();
								while (iterator.hasNext()) {
									String strings = iterator.next();
									if (strings.indexOf("\\+@-" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = strings;
										} else {
											a = a + "-,@_" + strings;
										}
										iterator.remove();
									}
	
								}
								if (!a.equals("")) {
									String[] subA = a.split("-,@_");
									for (int k = 0; k < subA.length; k++) {
										SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
										String subSellerImages[] = subA[k].split("\\+@-");
										System.out.println("//// Sub A Length" + subA.length + " " + (subA.length - 1));
										if (k == (subA.length - 1)) {
											String uploadPath = context.getRealPath("/" + subSellerImages[0]);
											File uploadDir = new File(uploadPath);
											if (uploadDir.exists()) 
											{
	
												File upLoadSubFolder = new File(uploadDir + "/" + subSellerImages[1] + "+@-" + catererId);
												if (!upLoadSubFolder.exists())
												{
													boolean success = upLoadSubFolder.mkdir();
												}
	
											}
											System.out.println("/////" + subSellerImages[0] + " " + subSellerImages[1] + " " + subSellerImages[2] + " " + subSellerImages[3]);
											File file = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											file.renameTo(new File(context.getRealPath("/" + subSellerImages[0] + "/" + subSellerImages[1] + "+@-" + catererId + "/" + subSellerImages[2].trim())));
											productImagesVideos.setProductImageVideoUrl(subSellerImages[0] + "/" + subSellerImages[1]+ "+@-" + catererId + "/" + subSellerImages[2].trim());
											productImagesVideos.setPhotoVideo(Boolean.TRUE);
											productImagesVideos.setAllProducts(allProduct);
											productImagesVideos.setId(Long.valueOf(subSellerImages[3]));
											adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
											String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
											adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
											if (adminResponseClass.isStatus()) {
												File currentFile = new File(context.getRealPath("/" + path));
												currentFile.delete();
											}
										} else {
											File currentFile = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											currentFile.delete();
										}
									}
								}
							}
	
						} else {
							for (int i = 0; i < productImages.length; i++) {
								SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
								String subProductImages[] = productImages[i].split("\\+@-");
	
								String uploadPath = context.getRealPath("/" + subProductImages[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) 
								{
									File upLoadSubFolder = new File(uploadDir + "/" + subProductImages[1] + "+@-" + catererId);
									if (!upLoadSubFolder.exists()) 
									{
										boolean success = upLoadSubFolder.mkdir();
									}
	
								}
								System.out.println("//// File path is"+subProductImages[0]+" "+subProductImages[1]+" "+subProductImages[2]);
								File file = new File(context.getRealPath("/" + subProductImages[0] + "/temp/" + subProductImages[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductImages[0] + "/" + subProductImages[1] + "+@-" + catererId + "/" + subProductImages[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductImages[0] + "/" + subProductImages[1] + "+@-" + catererId + "/" + subProductImages[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.TRUE);
								productImagesVideos.setAllProducts(allProduct);
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}
						}
	
					}
					else 
					{
						SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
						String productImages[] = objectNode.get("multipleFiles").asText().split("\\+@-");
	
						String uploadPath = context.getRealPath("/" + productImages[0]);
						File uploadDir = new File(uploadPath);
						if (uploadDir.exists()) 
						{
	
							File upLoadSubFolder = new File(uploadDir + "/" + productImages[1] + "+@-" + catererId);
							if (!upLoadSubFolder.exists()) 
							{
								boolean success = upLoadSubFolder.mkdir();
							}
							File file = new File(context.getRealPath("/" + productImages[0] + "/temp/" + productImages[2].trim()));
							file.renameTo(new File(context.getRealPath("/" + productImages[0] + "/" + productImages[1] + "+@-" + catererId + "/" + productImages[2].trim())));
							productImagesVideos.setProductImageVideoUrl(productImages[0] + "/" + productImages[1] + "+@-" + catererId + "/" + productImages[2].trim());
							productImagesVideos.setPhotoVideo(Boolean.TRUE);
							productImagesVideos.setAllProducts(allProduct);
							if (isEdit == 1) 
							{
								productImagesVideos.setId(Long.valueOf(productImages[3]));
								adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
								String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
								if (adminResponseClass.isStatus()) 
								{
									File currentFile = new File(context.getRealPath("/" + path));
									currentFile.delete();
								}
							}
							else
							{
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}
	
						}
					}
				}
				System.out.println("////Admin Response Class after image insert: " + adminResponseClass.isStatus());
			}

			
			System.out.println("\\\\\\\\pricingDetails : "+objectNode.get("pricingDetails"));
			// SellerProductPricing Entry
			if (adminResponseClass.isStatus() && objectNode.get("pricingDetails") != null) 
			{
				if (objectNode.get("pricingDetails").asText().trim().contains("-,@_"))
				{
					String productPricings[] = objectNode.get("pricingDetails").asText().trim().split("-,@_");
					for (int i = 0; i < productPricings.length; i++)
					{
						String subProductPricings[] = productPricings[i].split("_@.");
						SellerProductPricing sellerProductPricings = new SellerProductPricing();
						sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[0].trim()));
						sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[1].trim()));
						sellerProductPricings.setPrice(Double.valueOf(subProductPricings[2].trim()));
						sellerProductPricings.setAllProducts(allProduct);
						adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
					}
				} 
				else
				{
					String productPricings[] = objectNode.get("pricingDetails").asText().trim().split("_@.");
					SellerProductPricing sellerProductPricings = new SellerProductPricing();
					sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[0].trim()));
					sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[1].trim()));
					sellerProductPricings.setPrice(Double.valueOf(productPricings[2].trim()));
					sellerProductPricings.setAllProducts(allProduct);
					adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
				}
			}
			
			//FoodOfPackage Insertion
			/*if (adminResponseClass.isStatus() && objectNode.get("foodName") != null && !objectNode.get("foodName").asText().trim().equals("")) 
			{
				if(objectNode.get("foodName").asText().trim().contains(","))
				{
					String foods[] = objectNode.get("foodName").asText().trim().split(",");
					for(String food : foods)
					{
						FoodOfPackage foodOfPackage = new FoodOfPackage();
						String foodId[] = food.split("_");
						foodOfPackage.setAllProduct(allProduct);
						foodOfPackage.setStatus(Boolean.TRUE);
						foodOfPackage.setFood(foodService.fetchFoodByIdWithStatus(Long.parseLong(foodId[1].trim())).getFood());
						adminResponseClass = foodOfPackageService.saveFoodOfPackage(foodOfPackage);
					}
				}
				else
				{
					FoodOfPackage foodOfPackage = new FoodOfPackage();
					String foodId[] = objectNode.get("foodName").asText().trim().split("_");
					foodOfPackage.setAllProduct(allProduct);
					foodOfPackage.setStatus(Boolean.TRUE);
					foodOfPackage.setFood(foodService.fetchFoodByIdWithStatus(Long.parseLong(foodId[1])).getFood());
					adminResponseClass = foodOfPackageService.saveFoodOfPackage(foodOfPackage);
				}
			}*/
			
			if (adminResponseClass.isStatus() && (objectNode.get("foodTitleLength") == null || !objectNode.get("foodTitleLength").asText().trim().equalsIgnoreCase("same") ))
			{
				String addFoodId[] = null;
				String removeFoodId[] = null;
				//System.out.println("////// foodName: "+objectNode.get("foodName").asText().trim());
				if(objectNode.get("foodName").asText().trim().contains("-@.-"))
				{
					String x[] = objectNode.get("foodName").asText().trim().split("-@.-");
						for(int i = 0 ; i< x.length; i++)
						{
							if(i == 0)
							{
								if(x[0].trim().equals(""))
									addFoodId = null;
								else
									addFoodId = x[0].split(",");
							}
							else if(i == 1)
							{
								if(x[1].trim().equals(""))
									removeFoodId = null;
								else
									removeFoodId = x[1].split(",");
							}
						}
				}
				else
					addFoodId = objectNode.get("foodName").asText().trim().split(",");
				
				if(addFoodId != null)
					for (String eachFoodId : addFoodId)
					{
						//System.out.println("////// eachAddFoodId: "+eachFoodId);
						eachFoodId = (eachFoodId.split("_"))[1];
						//System.out.println("////// eachAddFoodId: "+eachFoodId);
						FoodOfPackage foodOfPackage = new FoodOfPackage();
						long editfoodOfPackageId = foodOfPackageService.foodOfPackageByfoodIdAndAllProductId(allProduct.getId(), Long.parseLong(eachFoodId));
						if(editfoodOfPackageId !=0)
							foodOfPackage.setId(editfoodOfPackageId);
						foodOfPackage.setAllProduct(allProduct);
						foodOfPackage.setStatus(Boolean.TRUE);
						foodOfPackage.setFood(foodService.fetchFoodByIdWithStatus(Long.parseLong(eachFoodId)).getFood());
						adminResponseClass = foodOfPackageService.saveFoodOfPackage(foodOfPackage);
					}
				if(removeFoodId != null)
					for (String eachFoodId : removeFoodId)
					{
						//System.out.println("////// eachRemoveFoodId: "+eachFoodId);
						eachFoodId = (eachFoodId.split("_"))[1];
						FoodOfPackage foodOfPackage = new FoodOfPackage();
						long editfoodOfPackageId = foodOfPackageService.foodOfPackageByfoodIdAndAllProductId(allProduct.getId(), Long.parseLong(eachFoodId));
						if(editfoodOfPackageId !=0)
							foodOfPackage.setId(editfoodOfPackageId);
						foodOfPackage.setAllProduct(allProduct);
						foodOfPackage.setStatus(Boolean.FALSE);
						foodOfPackage.setFood(foodService.fetchFoodByIdWithStatus(Long.parseLong(eachFoodId)).getFood());
						adminResponseClass = foodOfPackageService.saveFoodOfPackage(foodOfPackage);
					}
				
			}
	
			//Interminiate-Product-Occasion Table Entry
			System.out.println("///Occasion Id are" + objectNode.get("occasion").asText().trim());
			if (adminResponseClass.isStatus()) {
				if (!(objectNode.get("titleLength").asText().trim().equals("same"))) {
					List<IntProductOccasion> listIntProductOccasion = occasionService.fetchAllIntProductOccByAllProductId(allProduct.getId()).getListIntProductOccasion();
					if(listIntProductOccasion != null){
						for(int p=0;p<listIntProductOccasion.size();p++)
						{
							listIntProductOccasion.get(p).setStatus(Boolean.FALSE);
							occasionService.saveIntProductOcc(listIntProductOccasion.get(p));
						}
					}
					
					String occasionNames[] = objectNode.get("occasion").asText().trim().split(",");
					for(int i = 0; i< occasionNames.length; i++)
					{
						boolean found = false;
						if(listIntProductOccasion != null){
							for (int j = 0; j < listIntProductOccasion.size(); j++)
							{
								if(listIntProductOccasion.get(j).getOccasion().getId() == Long.parseLong(occasionNames[i]))
								{
									listIntProductOccasion.get(j).setStatus(Boolean.TRUE);
									occasionService.saveIntProductOcc(listIntProductOccasion.get(j));
									found = true;
									break;
								}
							}
							if(!found)
							{
								IntProductOccasion ipo = new IntProductOccasion();
								ipo.setAllProducts(allProduct);
								ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
								ipo.setStatus(Boolean.TRUE);
								occasionService.saveIntProductOcc(ipo);
							}
						}else{
							IntProductOccasion ipo = new IntProductOccasion();
							ipo.setAllProducts(allProduct);
							ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
							ipo.setStatus(Boolean.TRUE);
							occasionService.saveIntProductOcc(ipo);
						}
						
					}
				}
				//System.out.println("////Admin Response Class after IntProductOccasion insert: " + adminResponseClass.isStatus());
			}
	
			//DiscountDetails Entry to SellerDiscount Table
			if ((Integer.parseInt(objectNode.get("hasValue").asText().trim()) == 1) && (adminResponseClass.isStatus())) {
				SellerDiscount sellerDiscount = new SellerDiscount();
				sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDateDiscount").asText().trim()));
				sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDateDiscount").asText().trim()));
				sellerDiscount.setDiscount(Double.parseDouble(objectNode.get("discount").asText().trim()));
				if (Integer.parseInt(objectNode.get("isFlat").asText().trim()) == 1) {
					sellerDiscount.setFlatDiscount(Boolean.TRUE);
				} else {
					sellerDiscount.setFlatDiscount(Boolean.FALSE);
				}
				sellerDiscount.setAllProducts(allProduct);
				adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return adminResponseClass.isStatus();	
	}
	
	@RequestMapping(value = "/admin-fetchAllCatererProductsBySellerId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCatererProductsBySellerId()
	{
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = catererService.fetchAllCatererProductsBySellerId((SellerDetails)httpSession.getAttribute("sellerDetailsSession"));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	@RequestMapping(value="/admin-fetchCatererByCatererId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchCatererByCatererId(@RequestParam("id") String id)
	{
		if((SellerDetails)httpSession.getAttribute("sellerDetailsSession") == null)
			return null;
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = catererService.fetchCatererByCatererId(id,((SellerDetails)httpSession.getAttribute("sellerDetailsSession")).getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	/*For Hall Product*/
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	@RequestMapping(value = "/admin-addEditHall", method = RequestMethod.POST)
	public @ResponseBody boolean addEditHall(@RequestBody ObjectNode objectNode, BindingResult bindingResult, HttpServletRequest request) 
	{
		String hallId = "";
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		AllProducts allProduct = new AllProducts();
		String categoryName;
		try 
		{
			if (!(objectNode.get("editProductId").asText().trim().equals(""))) {
				allProduct.setId(Long.parseLong(objectNode.get("allProductId").asText().trim()));
				adminResponseClass.setStatus(Boolean.TRUE);
			} 
				//System.out.println("///In else");
				categoryName = AllCategoryNames.getCategoryName(objectNode.get("categoryName").asText().trim());
				adminResponseClass = categoryAvailableService.fetchCategoryByCategoryNameWithStatus(categoryName);
		
			if (adminResponseClass.isStatus()) {
				allProduct.setCategoryAvailable(adminResponseClass.getCategoryAvailable());
				SellerDetails sellerDetails = (SellerDetails)httpSession.getAttribute("sellerDetailsSession");
				allProduct.setSellerDetails(sellerDetails);
				adminResponseClass = allProductsService.saveAllProducts(allProduct);
			}
			
			// Hall Product Entry
			if (adminResponseClass.isStatus()) {
				Halls hall = new Halls();
				if (objectNode.get("editProductId").asText().trim().equals("")) {
					adminResponseClass = hallsService.findLastHallId();
					if (adminResponseClass.getLastId().equals("0")) {
						String id = new CreateId().IdGeneration("HALL0");
						hall.setId(id);
						hallId = id;
					} else {
						String id = new CreateId().IdGeneration(adminResponseClass.getLastId());
						if (!(id.equalsIgnoreCase("No Id Found"))) 
						{
							hall.setId(id);
							hallId = id;
						}
						else
						{
							return false;
						}
					}
					hall.setStatus(Boolean.TRUE);
				} else {
					hall.setId(objectNode.get("editProductId").asText().trim());
					hallId = objectNode.get("editProductId").asText().trim();
					if(objectNode.get("productStatus") == null && objectNode.get("productStatus").asText().trim().equals("Active")){
						hall.setStatus(Boolean.TRUE);
					}
					else{
						hall.setStatus(Boolean.FALSE);
					}
	
				}
				
				hall.setName(objectNode.get("name").asText().trim());
				adminResponseClass = productTypeService.fetchProductTypeByIdWithStatus(Long.parseLong(objectNode.get("typeName").asText().trim()));
				hall.setProductType(adminResponseClass.getProductType());
				hall.setDescription(objectNode.get("description").asText().trim());
				hall.setAdvancePaymentPercentage(Double.parseDouble(objectNode.get("advancePaymentPercentage").asText().trim()));
				
				hall.setNoOfBedRoom(objectNode.get("isExtraBedRooms").asInt());
				hall.setHasParking(objectNode.get("isParkingFacility").asBoolean());
				hall.setLawnArea(objectNode.get("isLawn").asInt());
				hall.setCrackerAllowed(objectNode.get("isCrackersAllowed").asBoolean());
				hall.setCelebrationArea(objectNode.get("isExtraSpace").asInt());
				hall.setHasWifi(objectNode.get("isWifiConnection").asBoolean());
				hall.setNoOfWashRoom(objectNode.get("isnoOfWashRooms").asInt());
				hall.setSeparateKitchen(objectNode.get("isKitchen").asBoolean());
				hall.setSeparateStoreRoom(objectNode.get("isStoreRooms").asBoolean());
				hall.setEatingSeatCapacity(objectNode.get("eatingSpaceCapacity").asInt());
				
				if(objectNode.get("availability").asText().trim().equalsIgnoreCase("Yes"))
					hall.setAvailability(Boolean.TRUE);
				else 
					hall.setAvailability(Boolean.FALSE);
				
				if(objectNode.get("freebie") != null || !objectNode.get("freebie").asText().trim().equals("")){
					hall.setFreebie(objectNode.get("freebie").asText().trim());
				}
				
				if (objectNode.get("singleFiles").asText().indexOf("@*") >= 0) {
					String abc[] = objectNode.get("singleFiles").asText().trim().split("@\\*");
					System.out.println("///SingleFiles is" + abc[0] + " " + abc[1]);
					hall.setDpUrl(abc[1]);
				}
				else
				{
					String dpImages[] = objectNode.get("singleFiles").asText().trim().split("-,@_");
					ServletContext context = request.getServletContext();
					for(int i = 0; i<dpImages.length;i++){
						String image[] = dpImages[i].split("\\+@-");
						if (i == (dpImages.length - 1)) {
							String uploadPath = context.getRealPath("/" + image[0]);
							File uploadDir = new File(uploadPath);
							if (uploadDir.exists()) 
							{
								File upLoadSubFolder = new File(uploadDir + "/" + image[1] + "+@-"+hall.getId());
								if (!upLoadSubFolder.exists()) {
									boolean success = upLoadSubFolder.mkdir();
								}
							}
							File file = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							System.out.println("////File is" + file);
							file.renameTo(new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + hall.getId() + "/"+ image[2].trim())));
							System.out.println("////Rename file is" + new File(context.getRealPath("/" + image[0] + "/" + image[1]+ "+@-" + hall.getId() + "/"+ image[2].trim())));
							hall.setDpUrl(image[0] + "/" + image[1]+ "+@-" + hall.getId() + "/"+ image[2].trim());
						}
						else
						{
							File currentFile = new File(context.getRealPath("/" + image[0] + "/temp/" + image[2].trim()));
							currentFile.delete();
						}
					}
				}
				
				hall.setAllProducts(allProduct);
				adminResponseClass = hallsService.saveHall(hall);
	
			}
			int isEdit = 0;
			if (!objectNode.get("editProductId").asText().trim().equals("")) {
				isEdit = 1;
			}
			
			// SellerProductImagesVideos Entry
			if (adminResponseClass.isStatus()) {
				ServletContext context = request.getServletContext();
				if (objectNode.get("multipleFiles").asInt() != 1) {
					if (objectNode.get("multipleFiles").asText().indexOf("-,@_") >= 0) {
						String productImages[] = objectNode.get("multipleFiles").asText().split("-,@_");
						List<String> listString = new ArrayList<String>();
						for (String abc : productImages) {
							listString.add(abc);
						}
						if (isEdit == 1) {
							String modal = objectNode.get("modelId").asText();
							String[] modalId = modal.split("-,@_");
							for (int i = 0; i < modalId.length; i++) {
								String a = "";
								Iterator<String> iterator = listString.iterator();
								while (iterator.hasNext()) {
									String strings = iterator.next();
									if (strings.indexOf("\\+@-" + modalId[i]) >= 0) {
										if (a.equals("")) {
											a = strings;
										} else {
											a = a + "-,@_" + strings;
										}
										iterator.remove();
									}
	
								}
								if (!a.equals("")) {
									String[] subA = a.split("-,@_");
									for (int k = 0; k < subA.length; k++) {
										SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
										String subSellerImages[] = subA[k].split("\\+@-");
										System.out.println("//// Sub A Length" + subA.length + " " + (subA.length - 1));
										if (k == (subA.length - 1)) {
											String uploadPath = context.getRealPath("/" + subSellerImages[0]);
											File uploadDir = new File(uploadPath);
											if (uploadDir.exists()) 
											{
	
												File upLoadSubFolder = new File(uploadDir + "/" + subSellerImages[1] + "+@-" + hallId);
												if (!upLoadSubFolder.exists())
												{
													boolean success = upLoadSubFolder.mkdir();
												}
	
											}
											System.out.println("/////" + subSellerImages[0] + " " + subSellerImages[1] + " " + subSellerImages[2] + " " + subSellerImages[3]);
											File file = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											file.renameTo(new File(context.getRealPath("/" + subSellerImages[0] + "/" + subSellerImages[1] + "+@-" + hallId + "/" + subSellerImages[2].trim())));
											productImagesVideos.setProductImageVideoUrl(subSellerImages[0] + "/" + subSellerImages[1]+ "+@-" + hallId + "/" + subSellerImages[2].trim());
											productImagesVideos.setPhotoVideo(Boolean.TRUE);
											productImagesVideos.setAllProducts(allProduct);
											productImagesVideos.setId(Long.valueOf(subSellerImages[3]));
											adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
											String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
											adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
											if (adminResponseClass.isStatus()) {
												File currentFile = new File(context.getRealPath("/" + path));
												currentFile.delete();
											}
										} else {
											File currentFile = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
											currentFile.delete();
										}
									}
								}
							}
	
						} else {
							for (int i = 0; i < productImages.length; i++) {
								SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
								String subProductImages[] = productImages[i].split("\\+@-");
	
								String uploadPath = context.getRealPath("/" + subProductImages[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) 
								{
									File upLoadSubFolder = new File(uploadDir + "/" + subProductImages[1] + "+@-" + hallId);
									if (!upLoadSubFolder.exists()) 
									{
										boolean success = upLoadSubFolder.mkdir();
									}
	
								}
								System.out.println("//// File path is"+subProductImages[0]+" "+subProductImages[1]+" "+subProductImages[2]);
								File file = new File(context.getRealPath("/" + subProductImages[0] + "/temp/" + subProductImages[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductImages[0] + "/" + subProductImages[1] + "+@-" + hallId + "/" + subProductImages[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductImages[0] + "/" + subProductImages[1] + "+@-" + hallId + "/" + subProductImages[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.TRUE);
								productImagesVideos.setAllProducts(allProduct);
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}
						}
	
					}
					else 
					{
						SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
						String productImages[] = objectNode.get("multipleFiles").asText().split("\\+@-");
	
						String uploadPath = context.getRealPath("/" + productImages[0]);
						File uploadDir = new File(uploadPath);
						if (uploadDir.exists()) 
						{
	
							File upLoadSubFolder = new File(uploadDir + "/" + productImages[1] + "+@-" + hallId);
							if (!upLoadSubFolder.exists()) 
							{
								boolean success = upLoadSubFolder.mkdir();
							}
							File file = new File(context.getRealPath("/" + productImages[0] + "/temp/" + productImages[2].trim()));
							file.renameTo(new File(context.getRealPath("/" + productImages[0] + "/" + productImages[1] + "+@-" + hallId + "/" + productImages[2].trim())));
							productImagesVideos.setProductImageVideoUrl(productImages[0] + "/" + productImages[1] + "+@-" + hallId + "/" + productImages[2].trim());
							productImagesVideos.setPhotoVideo(Boolean.TRUE);
							productImagesVideos.setAllProducts(allProduct);
							if (isEdit == 1) 
							{
								productImagesVideos.setId(Long.valueOf(productImages[3]));
								adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
								String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
								if (adminResponseClass.isStatus()) 
								{
									File currentFile = new File(context.getRealPath("/" + path));
									currentFile.delete();
								}
							}
							else
							{
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							}
	
						}
					}
				}
				System.out.println("////Admin Response Class after image insert: " + adminResponseClass.isStatus());
			}
			
			// SellerProductPricing Entry
			if (adminResponseClass.isStatus() && objectNode.get("pricingDetails") != null) 
			{
				if (objectNode.get("pricingDetails").asText().trim().contains("-,@_"))
				{
					String productPricings[] = objectNode.get("pricingDetails").asText().trim().split("-,@_");
					for (int i = 0; i < productPricings.length; i++)
					{
						String subProductPricings[] = productPricings[i].split("_@.");
						SellerProductPricing sellerProductPricings = new SellerProductPricing();
						sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[0].trim()));
						sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[1].trim()));
						sellerProductPricings.setPrice(Double.valueOf(subProductPricings[2].trim()));
						sellerProductPricings.setAllProducts(allProduct);
						adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
					}
				} 
				else
				{
					String productPricings[] = objectNode.get("pricingDetails").asText().trim().split("_@.");
					SellerProductPricing sellerProductPricings = new SellerProductPricing();
					sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[0].trim()));
					sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(productPricings[1].trim()));
					sellerProductPricings.setPrice(Double.valueOf(productPricings[2].trim()));
					sellerProductPricings.setAllProducts(allProduct);
					adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
				}
			}
			
			//Interminiate-Product-Occasion Table Entry
			System.out.println("///Occasion Id are" + objectNode.get("occasion").asText().trim());
			if (adminResponseClass.isStatus()) {
				if ((!(objectNode.get("titleLength").asText().trim().equals("same")))) {
					List<IntProductOccasion> listIntProductOccasion = occasionService.fetchAllIntProductOccByAllProductId(allProduct.getId()).getListIntProductOccasion();
					if(listIntProductOccasion != null){
						for(int p=0;p<listIntProductOccasion.size();p++)
						{
							listIntProductOccasion.get(p).setStatus(Boolean.FALSE);
							occasionService.saveIntProductOcc(listIntProductOccasion.get(p));
						}
						
					}
					String occasionNames[] = objectNode.get("occasion").asText().trim().split(",");
					for(int i = 0; i< occasionNames.length; i++)
					{
						boolean found = false;
						if(listIntProductOccasion != null){
							for (int j = 0; j < listIntProductOccasion.size(); j++)
							{
								if(listIntProductOccasion.get(j).getOccasion().getId() == Long.parseLong(occasionNames[i]))
								{
									listIntProductOccasion.get(j).setStatus(Boolean.TRUE);
									occasionService.saveIntProductOcc(listIntProductOccasion.get(j));
									found = true;
									break;
								}
							}
							if(!found)
							{
								IntProductOccasion ipo = new IntProductOccasion();
								ipo.setAllProducts(allProduct);
								ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
								ipo.setStatus(Boolean.TRUE);
								occasionService.saveIntProductOcc(ipo);
							}	
						}else{
							IntProductOccasion ipo = new IntProductOccasion();
							ipo.setAllProducts(allProduct);
							ipo.setOccasion(occasionService.fetchOccasionsById(Long.parseLong(occasionNames[i])).getOccasion());
							ipo.setStatus(Boolean.TRUE);
							occasionService.saveIntProductOcc(ipo);
						}
						
					}
				}
				//System.out.println("////Admin Response Class after IntProductOccasion insert: " + adminResponseClass.isStatus());
			}
	
			//DiscountDetails Entry to SellerDiscount Table
			if ((Integer.parseInt(objectNode.get("hasValue").asText().trim()) == 1) && (adminResponseClass.isStatus())) {
				SellerDiscount sellerDiscount = new SellerDiscount();
				sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDateDiscount").asText().trim()));
				sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDateDiscount").asText().trim()));
				sellerDiscount.setDiscount(Double.parseDouble(objectNode.get("discount").asText().trim()));
				if (Integer.parseInt(objectNode.get("isFlat").asText().trim()) == 1) {
					sellerDiscount.setFlatDiscount(Boolean.TRUE);
				} else {
					sellerDiscount.setFlatDiscount(Boolean.FALSE);
				}
				sellerDiscount.setAllProducts(allProduct);
				adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
			}			
			
			//For freeProduct Insert
			if(adminResponseClass.isStatus())
			{
				if (objectNode.get("freeProduct") != null)
				{
					if (objectNode.get("freeProduct").asText().indexOf(",") >= 0)
					{
						String freeProductIds[] = objectNode.get("freeProduct").asText().trim().split(",");
						String freeProductQtys[] = objectNode.get("freeProductQty").asText().trim().split(",");
						String freeProductvalidities[] = objectNode.get("freeProductValidity").asText().trim().split(",");
						
						for(int i=0;i<freeProductIds.length;i++)
						{
							FreesProduct freesProduct = new FreesProduct();
							AdminResponseClass singleProduct = new AdminResponseClass();
							singleProduct = allProductsService.fetchAllProductByIdAndSeller(Integer.parseInt(freeProductIds[i].trim()), allProduct.getSellerDetails().getId());	
							
							freesProduct.setToId(singleProduct.getAllProducts());
							freesProduct.setWithId(allProduct);
							freesProduct.setQty(Integer.parseInt(freeProductQtys[i].trim()));
							freesProduct.setValidTo(new SimpleDateFormat("yyyy-MM-dd").parse(freeProductvalidities[i].trim()));
							freesProduct.setStatus(Boolean.TRUE);
							if(singleProduct.isStatus())
							{
								adminResponseClass = freesProductService.saveFreesProduct(freesProduct);
								adminResponseClass.setMssgStatus("Free Product Successfully Inserted");
							}
						}
					}
					else
					{
						FreesProduct freesProduct = new FreesProduct();
						AdminResponseClass singleProduct = new AdminResponseClass();
						singleProduct = allProductsService.fetchAllProductByIdAndSeller(Integer.parseInt(objectNode.get("freeProduct").asText().trim()), allProduct.getSellerDetails().getId());
						
						freesProduct.setToId(singleProduct.getAllProducts());
						freesProduct.setWithId(allProduct);
						freesProduct.setQty(Integer.parseInt(objectNode.get("freeProductQty").asText().trim().trim()));
						freesProduct.setValidTo(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("freeProductValidity").asText().trim()));
						freesProduct.setStatus(Boolean.TRUE);
						if(singleProduct.isStatus())
						{
							adminResponseClass = freesProductService.saveFreesProduct(freesProduct);
							adminResponseClass.setMssgStatus("Free Product Successfully Inserted");
						}
					}
				}
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllHallsBySellerId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllHallsBySellerId()
	{
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = hallsService.fetchAllHallsBySellerId(((SellerDetails)httpSession.getAttribute("sellerDetailsSession")).getId());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	@RequestMapping(value="/admin-fetchHallByHallId", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchHallByHallId(@RequestParam("id") String id)
	{
		if((SellerDetails)httpSession.getAttribute("sellerDetailsSession") == null)
			return null;
	    AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			adminResponseClass = hallsService.fetchHallByHallId(id,((SellerDetails)httpSession.getAttribute("sellerDetailsSession")).getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return adminResponseClass;
	}
	
	//For TestModel
	@Autowired
	TestModelService testModelService;
	@RequestMapping(value = "/fetchAllTestModel", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllTestModel() {
		AdminResponseClass adminResponseClass = testModelService.fetchAllTestModel();
		/*String data = "[";
		for(TestModel tM: adminResponseClass.getEvent())
		{
			data = data + "{" + "title: '" + tM.getTitle() + "', start: '" + new SimpleDateFormat("yyyy-MM-dd").format(tM.getStart()) 
					+  "', end: '" + new SimpleDateFormat("yyyy-MM-dd").format(tM.getEnd()) + "', className: 'bg-cyan'}," ;
		}
		
		data = data.substring(0, data.length()-1);
		data = data +"]";
		return data;*/
		return adminResponseClass;
	}
}

