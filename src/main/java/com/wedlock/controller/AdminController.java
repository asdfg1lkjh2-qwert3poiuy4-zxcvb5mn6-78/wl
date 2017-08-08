package com.wedlock.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.NoSuchProviderException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.AllProducts;
import com.wedlock.model.ApiResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.City;
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
import com.wedlock.service.CityService;
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
import com.wedlock.service.ZipCodeService;
import com.wedlock.util.AllCategoryNames;
import com.wedlock.util.createId;
import com.wedlock.util.smsApi;

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
	HttpSession httpSession;
	
	final String timeZoneApi = "http://api.timezonedb.com/v2/get-time-zone?key=U33W5JLS2CRZ&format=json&by=zone&zone=Asia/Kolkata";
    
	@RequestMapping(value = "/admin-addEditState", method = RequestMethod.POST)
	public @ResponseBody boolean addEditState(@RequestBody State state) {
		System.out.println("/////EditStateId"+state.getEditStateId());
		if(state.getEditStateId() != 0){
			state.setId(state.getEditStateId());
		}
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
		AdminResponseClass adminResponseClass;
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
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllCities", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllCities() {
		AdminResponseClass adminResponseClass = cityService.fetchAllCities();
		System.out.println("///List is"+adminResponseClass.getListAllCities().size());
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
	
	/*//for flower Type
	
	@RequestMapping(value = "/admin-addEditFlowerType", method= RequestMethod.POST)
	public @ResponseBody boolean adminAddEditFlowerType(@RequestBody FlowerType flowerType) {
		if(flowerType.getEditId() != 0){
			flowerType.setId((flowerType.getEditId()));
		}
		//System.out.println("\\\\\\ggfhfghgf "+flowerType.isStatus());
		AdminResponseClass adminResponseClass = flowerTypeService.saveFlowerType(flowerType);
		return adminResponseClass.isStatus();
		
	}

	@RequestMapping(value = "/admin-fetchAllFlowerType", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFlowerType() {
		AdminResponseClass adminResponseClass = flowerTypeService.fetchAllFlowerType();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchFlowerTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFlowerTypeById(@RequestParam("id") Long id) {
		AdminResponseClass adminResponseClass = flowerTypeService.fetchFlowerTypeById(id);
		return adminResponseClass;
	}*/

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
		adminResponseClass.setCategoryAvailables(categoryAvailableService.listFetchAllCategoryAvailble());
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
		return adminResponseClass;
	}
	/*For Seller*/
	@RequestMapping(value = "/admin-addEditSellerDetails", method = RequestMethod.POST)
	public @ResponseBody boolean addEditSellerDetails(@RequestBody ObjectNode objectNode,BindingResult bindingResult, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException {
		
		/*System.out.println("////In servlet");
		System.out.println("////Object Node is"+sellerDetails.get("sellerFirstName").asText() +" "+sellerDetails.get("sellerLastName").asText()+" "+sellerDetails.get("sellerContactNumber").asText());*/
		System.out.println("/////In servlet");
		AdminResponseClass adminResponseClass = sellerService.findSellerByEmailAndContactNo(objectNode.get("sellerEmailId").asText(), objectNode.get("sellerContactNumber").asText(), objectNode.get("editSellerId").asText());
		System.out.println("Admin Response Class"+adminResponseClass.isStatus());
		if(adminResponseClass.isStatus()){
			SellerDetails sellerDetails = new SellerDetails();
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
			
			String sellerDate = objectNode.get("sellerDateOfBirth").asText();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			sellerDetails.setSellerDateOfBirth(simpleDateFormat.parse(sellerDate));
			
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
						String id = createId.IdGeneration("SELLER0");
						sellerDetails.setId(id);
					}else{
						String id = createId.IdGeneration(adminResponseClass.getLastId());
						sellerDetails.setId(id);
					}
			}
			
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
				
				
				String isEdit;
				if(!(sellerDetails.getEditSellerId().equals(""))){
					isEdit = "Yes";
				}else{
					isEdit = "No";
				}
				sellerDetails.setEmailVerified(Boolean.FALSE);
				AdminDetails adminDetails =(AdminDetails)httpSession.getAttribute("adminDetailsSession");
				sellerDetails.setAdminDetails(adminDetails);
				adminResponseClass =sellerService.addEditSellerDetails(sellerDetails,isEdit);
				if(adminResponseClass.isStatus()){
					if(isEdit.equals("No")){
						 mailService.sendEmailToSeller(sellerDetails,"notVerified");
						 
						 String mssg = "Hello "+sellerDetails.getSellerFirstName()+",Thanks for registering with Wedlock. Your Login Credentials are:- EmailId#"+sellerDetails.getSellerEmailId()+" and Password is#:"+sellerDetails.getSellerPassword()+" .Do not share this login credentials with anyone.";
						 String phoneNumber = sellerDetails.getSellerContactNumber();
						 URL url = new URL(smsApi.sendSms(mssg, phoneNumber));
						 ObjectMapper objectMapper = new ObjectMapper();
						 objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
						 ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
						 System.out.println("////APIResponseClass"+apiResponseClass.getTotal_sms());
						 if(apiResponseClass.getTotal_sms() == 0){
							adminResponseClass.setStatus(Boolean.FALSE);
						 }
							
					}
				   
					if(objectNode.get("hasValue").asInt() == 1){
						SellerBankDetails sellerBankDetails = new SellerBankDetails();
						
						sellerBankDetails.setEditSellerBankDetailsId(objectNode.get("editSellerBankDetailsId").asLong());
						if(sellerBankDetails.getEditSellerBankDetailsId() !=0){
							sellerBankDetails.setId(sellerBankDetails.getEditSellerBankDetailsId());
						}
						sellerBankDetails.setAccountHolderName(objectNode.get("accountHolderName").asText());
						sellerBankDetails.setAccountNumber(objectNode.get("accountNumber").asText());
						sellerBankDetails.setIfscCode(objectNode.get("ifscCode").asText());
						sellerBankDetails.setBranchCode(objectNode.get("branchCode").asText());
						sellerBankDetails.setBranchName(objectNode.get("branchName").asText());
						sellerBankDetails.setSellerId(sellerDetails.getId());
						
						adminResponseClass = sellerBankDetailsService.saveSellerBankDetails(sellerBankDetails);
					}
					if(objectNode.get("sellerInactive").asText().equals("")){
						SellerInactiveDetails sellerInactiveDetails = new SellerInactiveDetails();
						sellerInactiveDetails.setSellerId(sellerDetails.getId());
						adminResponseClass = sellerInactiveService.saveSellerInactive(sellerInactiveDetails,"Active");
					}else{
						SellerInactiveDetails sellerInactiveDetails = new SellerInactiveDetails();
						sellerInactiveDetails.setInactiveReason(objectNode.get("sellerInactive").asText());
						sellerInactiveDetails.setSellerId(sellerDetails.getId());
						sellerInactiveDetails.setAdminDetails(adminDetails);
						adminResponseClass = sellerInactiveService.saveSellerInactive(sellerInactiveDetails,"Inactive");
					}
				}
		}
		
		
		return adminResponseClass.isStatus();
		/*return true;*/
	}
	@RequestMapping(value = "/admin-fetchAllSellers", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSellers(){
		AdminResponseClass adminResponseClass = sellerService.fetchAllSellers();
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-fetchAllSellersById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllSellersById(@RequestParam("id") String id) {
		AdminResponseClass adminResponseClass = sellerService.fetchAllSellersById(id);
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
		String rpath = context.getRealPath("/");  
		String fullPath[] = id.split("/");// whatever path you used for // storing the file
			System.out.println("/////Full Path is"+fullPath[0]+" "+fullPath[1]+" "+fullPath[2]); 
		Path path = Paths.get(rpath+"/"+fullPath[0].trim()+"/"+fullPath[1].trim()+"/"+fullPath[2].trim());
		System.out.println("Path is"+path);
		byte[] data = Files.readAllBytes(path);
		
		return data;
	}
	
	@RequestMapping(value = "/getImageSocial")
	@ResponseBody
	public byte[] getImageSocialWork(HttpServletRequest request) throws IOException {
		ServletContext context = request.getServletContext();
		String rpath = context.getRealPath("/");
		rpath = rpath + "/Category/categoryIcon/1498758941362tulip.png" ; // whatever path you used for
													// storing the file
		Path path = Paths.get(rpath);
		byte[] data = Files.readAllBytes(path);
		return data;

	}

	/*For Product Type*/
	@RequestMapping(value = "/admin-addEditProductType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditProductType(@RequestBody ProductType productType) {
		AdminResponseClass adminResponseClass;
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
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllProductTypes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllProductTypes() {
		AdminResponseClass adminResponseClass = productTypeService.fetchAllProductTypes();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchProductTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchProductTypeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = productTypeService.fetchProductTypeById(id);
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-fetchProductTypesWithStatusByCat", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchProductTypesWithStatusByCat(@RequestParam("catName") String catName) {
		AdminResponseClass adminResponseClass = productTypeService.fetchProductTypesWithStatusByCat(catName);
		return adminResponseClass;
	}
	
	/*For Photography Type*/
	@RequestMapping(value = "/admin-addEditPhotographyType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographyType(@RequestBody PhotographyType photographyType) {
		AdminResponseClass adminResponseClass;
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
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyTypes", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyTypes() {
		AdminResponseClass adminResponseClass = photographyTypeService.fetchAllPhotographyTypes();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchPhotographyTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographyTypeById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = photographyTypeService.fetchPhotographyTypeById(id);
		return adminResponseClass;
	}
	
	/*For Photography Occasion*/
	@RequestMapping(value = "/admin-addEditPhotographyOccasion", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographyOccasion(@RequestBody PhotographyOccasion photographyOccasion) {
		AdminResponseClass adminResponseClass;
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
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyOccasions", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyOccasions() {
		AdminResponseClass adminResponseClass = photographyOccasionService.fetchAllPhotographyOccasions();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchPhotographyOccasionById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographyOccasionById(@RequestParam("id") long id) {
		AdminResponseClass adminResponseClass = photographyOccasionService.fetchPhotographyOccasionById(id);
		return adminResponseClass;
	}
	
	/*For Photographer Product*/
	
	@RequestMapping(value = "/admin-addEditPhotographer", method = RequestMethod.POST)
	public @ResponseBody boolean addEditPhotographer(@RequestBody ObjectNode objectNode,BindingResult bindingResult, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException, ParseException {
		String photographerId = "";
		AdminResponseClass adminResponseClass;
		AllProducts products = new AllProducts();
		String categoryName;
		//All Products Entry
		System.out.println("////Edit Product Id"+objectNode.get("editProductId").asText());
		if(!(objectNode.get("editProductId").asText().equals(""))){
			products.setId(objectNode.get("allProductId").asLong());
			adminResponseClass = new AdminResponseClass();
			adminResponseClass.setStatus(Boolean.TRUE);
		}else{
			System.out.println("///In else");
			categoryName = AllCategoryNames.getCategoryName(objectNode.get("categoryName").asText());
			adminResponseClass = categoryAvailableService.fetchCategoryByCategoryName(categoryName);
		}
			
			if(adminResponseClass.isStatus()){
				
				products.setCategoryAvailable(adminResponseClass.getCategoryAvailable());
				//products.setSellerDetails();
				adminResponseClass = allProductsService.saveAllProducts(products);
			}
		
			System.out.println("////All Products id"+products.getId());
		//SellerPhotographer Entry
		if(adminResponseClass.isStatus()){
			SellerPhotographer sellerPhotographer = new SellerPhotographer();
			if(objectNode.get("editProductId").asText().equals("")){
				adminResponseClass = sellerPhotographerService.findLastSellerPhotographerId();
				if(adminResponseClass.getLastId().equals("0")){
					String id = createId.IdGeneration("PHOTO0");
					sellerPhotographer.setId(id);
					photographerId = id;
				}else{
					String id = createId.IdGeneration(adminResponseClass.getLastId());
					if(!(id.equals("No Id Found"))){
						sellerPhotographer.setId(id);
						photographerId = id;
					}
				}
				
			}else{
				sellerPhotographer.setId(objectNode.get("editProductId").asText());
				photographerId = objectNode.get("editProductId").asText();
			}
				sellerPhotographer.setProductName(objectNode.get("productName").asText());
				adminResponseClass = photographyTypeService.fetchPhotographyTypeById(objectNode.get("photographyTypeName").asLong());
				sellerPhotographer.setPhotographyType(adminResponseClass.getPhotographyType());
				sellerPhotographer.setPhotoDescription(objectNode.get("photoDescription").asText());
				sellerPhotographer.setNoOfPhotosProvided(objectNode.get("noOfPhotosProvided").asInt());
				sellerPhotographer.setVideoLength(objectNode.get("videoLength").asInt());
				if(objectNode.get("videoDescription") != null){
					sellerPhotographer.setVideoDescription(objectNode.get("videoDescription").asText());
				}
				sellerPhotographer.setAdvancePaymentPercentage(objectNode.get("advancePaymentPercentage").asDouble());
				sellerPhotographer.setAvailability(objectNode.get("availability").asText());
				sellerPhotographer.setFreebie(objectNode.get("freebie").asText());
				sellerPhotographer.setAllProducts(products);
				adminResponseClass = sellerPhotographerService.saveSellerPhotographer(sellerPhotographer);
			
		}
		int isEdit = 0;
		if(!objectNode.get("editProductId").asText().equals("")){
			isEdit = 1;
		}
		
		if(adminResponseClass.isStatus()){
			//SellerProductImagesVideos Entry
			ServletContext context = request.getServletContext();
			if(objectNode.get("multipleFiles").asInt() != 1){
				if(objectNode.get("multipleFiles").asText().indexOf(",")>=0){
					String productImages[] = objectNode.get("multipleFiles").asText().split(",");
					List<String> listString =new ArrayList<String>();
					for(String abc:productImages){
						listString.add(abc);
					}
					if(isEdit == 1){
						String modal = objectNode.get("modelId").asText();
						String [] modalId = modal.split(",");
						for(int i =0; i<modalId.length;i++){
							String a ="";
							/*for(int j=0; j<productImages.length;j++){
								if(productImages[j].indexOf("_"+modalId[i])>=0){
									if(a.equals("")){
										a = productImages[j];
										listString.remove(productImages[j]);
										
									}else{
										a = a +","+productImages[j];
										listString.remove(productImages[j]);
									}
								}
							}*/
							Iterator<String> iterator = listString.iterator();
							while(iterator.hasNext()){
								String strings = iterator.next();
								if(strings.indexOf("_"+modalId[i])>=0){
									if(a.equals("")){
										a = strings;
									}else{
										a = a +","+strings;
									}
									iterator.remove();
								}
								
							}
							if(!a.equals("")){
								String [] subA = a.split(",");
								for(int k = 0; k<subA.length;k++){
									SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
									String subSellerImages[] = subA[k].split("_");
									System.out.println("//// Sub A Length"+subA.length+" "+(subA.length - 1));
									if (k == (subA.length - 1)) {
										String uploadPath = context.getRealPath("/" + subSellerImages[0]);
										File uploadDir = new File(uploadPath);
										if (uploadDir.exists()) {

											File upLoadSubFolder = new File(uploadDir + "/" + subSellerImages[1] + "_"+ photographerId);
											if (!upLoadSubFolder.exists()) {
												boolean success = upLoadSubFolder.mkdir();
											}
											
										}
										System.out.println("/////"+subSellerImages[0]+" "+subSellerImages[1]+" "+subSellerImages[2]+" "+subSellerImages[3]);
										File file = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
										file.renameTo(new File(context.getRealPath("/" + subSellerImages[0] + "/" + subSellerImages[1]+ "_" + photographerId + "/"+ subSellerImages[2].trim())));
										productImagesVideos.setProductImageVideoUrl(subSellerImages[0] + "/" + subSellerImages[1]+ "_" + photographerId + "/"+ subSellerImages[2].trim());
										productImagesVideos.setPhotoVideo(Boolean.TRUE);
										productImagesVideos.setAllProducts(products);
										productImagesVideos.setId(Long.valueOf(subSellerImages[3]));
										adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
										String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
										adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
										if(adminResponseClass.isStatus()){
											File currentFile = new File(context.getRealPath("/"+path));
											currentFile.delete();
										}
									}else{
										File currentFile = new File(context.getRealPath("/" + subSellerImages[0] + "/temp/" + subSellerImages[2].trim()));
										currentFile.delete();
									}
								}
							}
						}
						
					}else{
						for(int i=0; i< productImages.length; i++){
							SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
							String subProductImages[] = productImages[i].split("_");
							
								String uploadPath = context.getRealPath("/" + subProductImages[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) {

									File upLoadSubFolder = new File(uploadDir + "/" + subProductImages[1] + "_"+ photographerId);
									if (!upLoadSubFolder.exists()) {
										boolean success = upLoadSubFolder.mkdir();
									}
									
								}
								
								File file = new File(context.getRealPath("/" + subProductImages[0] + "/temp/" + subProductImages[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductImages[0] + "/" + subProductImages[1]+ "_" + photographerId + "/"+ subProductImages[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductImages[0] + "/" + subProductImages[1]+ "_" + photographerId + "/"+ subProductImages[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.TRUE);
								productImagesVideos.setAllProducts(products);
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
						}
					}
					
				}else{
					SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
					String productImages[] = objectNode.get("multipleFiles").asText().split("_");
					
					String uploadPath = context.getRealPath("/" + productImages[0]);
					File uploadDir = new File(uploadPath);
					if (uploadDir.exists()) {

						File upLoadSubFolder = new File(uploadDir + "/" + productImages[1] + "_"+ photographerId);
						if (!upLoadSubFolder.exists()) {
							boolean success = upLoadSubFolder.mkdir();
						}
						File file = new File(context.getRealPath("/" + productImages[0] + "/temp/" + productImages[2].trim()));
						file.renameTo(new File(context.getRealPath("/" + productImages[0] + "/" + productImages[1]+ "_" + photographerId + "/"+ productImages[2].trim())));
						productImagesVideos.setProductImageVideoUrl(productImages[0] + "/" + productImages[1]+ "_" + photographerId + "/"+ productImages[2].trim());
						productImagesVideos.setPhotoVideo(Boolean.TRUE);
						productImagesVideos.setAllProducts(products);
						if(isEdit == 1){
							productImagesVideos.setId(Long.valueOf(productImages[3]));
							adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
							String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
							adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							if(adminResponseClass.isStatus()){
								File currentFile = new File(context.getRealPath("/"+path));
								currentFile.delete();
							}
						}
						adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
						
					}
			}
			}
				
			
			
			if((!(objectNode.get("videoFiles").asText().equals(""))) || (objectNode.get("videoFiles").asInt() != 1)){
				if(objectNode.get("videoFiles").asText().indexOf(",")>=0){
					String productVideos[] = objectNode.get("videoFiles").asText().split(",");
					List<String> listString =new ArrayList<String>();
					for(String abc:productVideos){
						listString.add(abc);
					}
					if(isEdit == 1){
						String modal = objectNode.get("modalVideoId").asText();
						String [] modalId = modal.split(",");
						for(int i =0; i<modalId.length;i++){
							String a ="";
							for(int j=0; j<productVideos.length;j++){
								if(productVideos[j].indexOf("_"+modalId[i])>=0){
									if(a.equals("")){
										a = productVideos[j];
										listString.remove(productVideos[j]);
										
									}else{
										a = a +","+productVideos[j];
										listString.remove(productVideos[j]);
									}
								}
							}
							Iterator<String> iterator = listString.iterator();
							while(iterator.hasNext()){
								String strings = iterator.next();
								if(strings.indexOf("_"+modalId[i])>=0){
									if(a.equals("")){
										a = strings;
									}else{
										a = a +","+strings;
									}
									iterator.remove();
								}
								
							}
							if(!a.equals("")){
								String [] subA = a.split(",");
								for(int k = 0; k<subA.length;k++){
									SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
									String subSellerVideos[] = subA[k].split("_");
									if (k == (subA.length - 1)) {
										String uploadPath = context.getRealPath("/" + subSellerVideos[0]);
										File uploadDir = new File(uploadPath);
										if (uploadDir.exists()) {

											File upLoadSubFolder = new File(uploadDir + "/" + subSellerVideos[1] + "_"+ photographerId);
											if (!upLoadSubFolder.exists()) {
												boolean success = upLoadSubFolder.mkdir();
											}
											
										}
										File file = new File(context.getRealPath("/" + subSellerVideos[0] + "/temp/" + subSellerVideos[2].trim()));
										file.renameTo(new File(context.getRealPath("/" + subSellerVideos[0] + "/" + subSellerVideos[1]+ "_" + photographerId + "/"+ subSellerVideos[2].trim())));
										productImagesVideos.setProductImageVideoUrl(subSellerVideos[0] + "/" + subSellerVideos[1]+ "_" + photographerId + "/"+ subSellerVideos[2].trim());
										productImagesVideos.setPhotoVideo(Boolean.FALSE);
										productImagesVideos.setAllProducts(products);
										productImagesVideos.setId(Long.valueOf(subSellerVideos[3]));
										adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
										String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
										adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
										if(adminResponseClass.isStatus()){
											File currentFile = new File(context.getRealPath("/"+path));
											currentFile.delete();
										}
									}else{
										File currentFile = new File(context.getRealPath("/" + subSellerVideos[0] + "/temp/" + subSellerVideos[2].trim()));
										currentFile.delete();
									}
								}
							}
						}
					
					}else{
						for(int i=0; i< productVideos.length; i++){
							SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
							String subProductVideos[] = productVideos[i].split("_");
							
								String uploadPath = context.getRealPath("/" + subProductVideos[0]);
								File uploadDir = new File(uploadPath);
								if (uploadDir.exists()) {

									File upLoadSubFolder = new File(uploadDir + "/" + subProductVideos[1] + "_"+ photographerId);
									if (!upLoadSubFolder.exists()) {
										boolean success = upLoadSubFolder.mkdir();
									}
									
								}
								
								File file = new File(context.getRealPath("/" + subProductVideos[0] + "/temp/" + subProductVideos[2].trim()));
								file.renameTo(new File(context.getRealPath("/" + subProductVideos[0] + "/" + subProductVideos[1]+ "_" + photographerId + "/"+ subProductVideos[2].trim())));
								productImagesVideos.setProductImageVideoUrl(subProductVideos[0] + "/" + subProductVideos[1]+ "_" + photographerId + "/"+ subProductVideos[2].trim());
								productImagesVideos.setPhotoVideo(Boolean.FALSE);
								productImagesVideos.setAllProducts(products);
								adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
						}
					}
				}else{
					SellerProductImagesVideos productImagesVideos = new SellerProductImagesVideos();
					String productVideos[] = objectNode.get("videoFiles").asText().split("_");
					
					String uploadPath = context.getRealPath("/" + productVideos[0]);
					File uploadDir = new File(uploadPath);
					if (uploadDir.exists()) {

						File upLoadSubFolder = new File(uploadDir + "/" + productVideos[1] + "_"+ photographerId);
						if (!upLoadSubFolder.exists()) {
							boolean success = upLoadSubFolder.mkdir();
						}
						File file = new File(context.getRealPath("/" + productVideos[0] + "/temp/" + productVideos[2].trim()));
						file.renameTo(new File(context.getRealPath("/" + productVideos[0] + "/" + productVideos[1]+ "_" + photographerId + "/"+ productVideos[2].trim())));
						productImagesVideos.setProductImageVideoUrl(productVideos[0] + "/" + productVideos[1]+ "_" + photographerId + "/"+ productVideos[2].trim());
						productImagesVideos.setPhotoVideo(Boolean.FALSE);
						productImagesVideos.setAllProducts(products);
						if(isEdit == 1){
							productImagesVideos.setId(Long.valueOf(productVideos[3]));
							adminResponseClass = sellerProductImagesVideosService.fetchSellerProductImagesVideosById(productImagesVideos.getId());
							String path = adminResponseClass.getSellerProductImageVideo().getProductImageVideoUrl();
							adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
							if(adminResponseClass.isStatus()){
								File currentFile = new File(context.getRealPath("/"+path));
								currentFile.delete();
							}
						}
						adminResponseClass = sellerProductImagesVideosService.saveSellerProductImagesVideos(productImagesVideos);
					}
				
				}
			
			}
			
			System.out.println("////Admin Response Class is"+adminResponseClass.isStatus());
		}
		
		System.out.println("//// Price is "+objectNode.get("fromDate"));
		if(adminResponseClass.isStatus()){
			System.out.println("////Inside there reh");
			//SellerProductPricing Entry
			SellerProductPricing sellerProductPricing = new SellerProductPricing();
			sellerProductPricing.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDate").asText()));
			sellerProductPricing.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDate").asText()));
			sellerProductPricing.setPrice(objectNode.get("price").asDouble());
			sellerProductPricing.setAllProducts(products);
			adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(photographerId);
			adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricing);
			
			if(objectNode.get("otherPriceDetails") !=null){
				if(objectNode.get("otherPriceDetails").asText().indexOf("_")>=0){
					String productPricings[] = objectNode.get("otherPriceDetails").asText().split("_");
					for(int i=0; i<productPricings.length; i++){
						String subProductPricings[] = productPricings[i].split(",");
						SellerProductPricing sellerProductPricings = new SellerProductPricing();
						sellerProductPricings.setPriceFromDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[0]));
						sellerProductPricings.setPriceToDate(new SimpleDateFormat("yyyy-MM-dd").parse(subProductPricings[1]));
						sellerProductPricings.setPrice(Double.valueOf(subProductPricings[2]));
						sellerProductPricings.setAllProducts(products);
						adminResponseClass = sellerProductPricingService.saveSellerProductPricing(sellerProductPricings);
					}
				}else{
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
		
		
		System.out.println("///Photography Occasion Name is"+objectNode.get("photographyOccasionName").asText());
		if(adminResponseClass.isStatus()){
			if(!(objectNode.get("titleLength").asText().equals("same"))){
				if(objectNode.get("photographyOccasionName").asText().indexOf(",")>=0){
					String photographyOccasionNames[] = objectNode.get("photographyOccasionName").asText().split(",");
					for(int i=0; i<photographyOccasionNames.length; i++){
						SellerPhotographyOccasion sellerPhotographyOccasion = new SellerPhotographyOccasion();
						sellerPhotographyOccasion.setAllProducts(products);
						if(objectNode.get("titleLength").asText().equals("minus")){
							adminResponseClass = sellerPhotographyOccasionService.deleteSellerPhotographyOccasionByAllProductsAndOccasionId(sellerPhotographyOccasion.getAllProducts().getId(),Long.valueOf(Long.valueOf(photographyOccasionNames[i])));
						}else{
							adminResponseClass = photographyOccasionService.fetchPhotographyOccasionById(Long.valueOf(photographyOccasionNames[i]));
							sellerPhotographyOccasion.setPhotographyOccasion(adminResponseClass.getPhotographyOccasion());
							adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(photographerId);
							sellerPhotographyOccasion.setSellerPhotographer(adminResponseClass.getSellerPhotographer());
							adminResponseClass = sellerPhotographyOccasionService.saveSellerPhotographyOccasion(sellerPhotographyOccasion,isEdit);
						}
						
					}
				}else{
					SellerPhotographyOccasion sellerPhotographyOccasion = new SellerPhotographyOccasion();
					String photographyOccasionName = objectNode.get("photographyOccasionName").asText();
					sellerPhotographyOccasion.setAllProducts(products);
					if(objectNode.get("titleLength").asText().equals("minus")){
						adminResponseClass = sellerPhotographyOccasionService.deleteSellerPhotographyOccasionByAllProductsAndOccasionId(sellerPhotographyOccasion.getAllProducts().getId(),Long.valueOf(photographyOccasionName));
					}else{
						adminResponseClass = photographyOccasionService.fetchPhotographyOccasionById(Long.valueOf(photographyOccasionName));
						sellerPhotographyOccasion.setPhotographyOccasion(adminResponseClass.getPhotographyOccasion());
						adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(photographerId);
						sellerPhotographyOccasion.setSellerPhotographer(adminResponseClass.getSellerPhotographer());
						adminResponseClass = sellerPhotographyOccasionService.saveSellerPhotographyOccasion(sellerPhotographyOccasion,isEdit);
					}
					
				}
			}
		}

		if((objectNode.get("hasValue").asInt() == 1) && (adminResponseClass.isStatus())){
			SellerDiscount sellerDiscount = new SellerDiscount();
			sellerDiscount.setFromDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("fromDateDiscount").asText()));
			sellerDiscount.setToDateDiscount(new SimpleDateFormat("yyyy-MM-dd").parse(objectNode.get("toDateDiscount").asText()));
			sellerDiscount.setDiscount(objectNode.get("discount").asDouble());
			if(objectNode.get("isFlat").asInt() == 1){
				sellerDiscount.setFlatDiscount(Boolean.TRUE);
			}else{
				sellerDiscount.setFlatDiscount(Boolean.FALSE);
			}
			sellerDiscount.setAllProducts(products);
			adminResponseClass = sellerDiscountService.saveSellerDiscount(sellerDiscount);
		}
		System.out.println("/////AdminResponseClass is"+adminResponseClass.isStatus());
		return adminResponseClass.isStatus();
	}
	
	@RequestMapping(value = "/admin-fetchAllPhotographyProducts", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllPhotographyProducts() throws ParseException{
		AdminResponseClass adminResponseClass = sellerPhotographerService.fetchAllPhotographyProducts();
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-fetchPhotographerById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchPhotographerById(@RequestParam("id") String id) throws ParseException{
		AdminResponseClass adminResponseClass = sellerPhotographerService.fetchSellerPhotographerById(id);
		return adminResponseClass;
	}
	
	@RequestMapping(value = "/admin-checkSellerPricings", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass checkSellerPricings(@RequestBody SellerProductPricing productPricing) throws ParseException{
		AdminResponseClass adminResponseClass = sellerProductPricingService.checkSellerPricings(productPricing);
		return adminResponseClass;
	}
	@RequestMapping(value = "/admin-checkSellerDiscounts", method = RequestMethod.POST)
	public @ResponseBody AdminResponseClass checkSellerDiscounts(@RequestBody SellerDiscount sellerDiscount) throws ParseException{
		AdminResponseClass adminResponseClass = sellerDiscountService.checkSellerDiscounts(sellerDiscount);
		return adminResponseClass;
	}
	/*@RequestMapping(value = "/admin-addEditFlowerType", method= RequestMethod.POST)
	public @ResponseBody boolean adminAddEditFlowerType(@RequestBody FlowerType flowerType) {
		AdminResponseClass adminResponseClass = flowerTypeService.saveFlowerType(flowerType);
		return adminResponseClass.isStatus();

	}*/
	
}
