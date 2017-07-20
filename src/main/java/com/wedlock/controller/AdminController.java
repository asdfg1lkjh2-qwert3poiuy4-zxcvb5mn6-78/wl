package com.wedlock.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryAvailable;
import com.wedlock.model.City;
import com.wedlock.model.FlowerType;
import com.wedlock.model.Occasion;
import com.wedlock.model.PhotographyOccasion;
import com.wedlock.model.PhotographyType;
import com.wedlock.model.SellerBankDetails;
import com.wedlock.model.SellerDetails;
import com.wedlock.model.SellerInactiveDetails;
import com.wedlock.model.State;
import com.wedlock.model.SubCategoryAvailable;
import com.wedlock.model.ZipCode;
import com.wedlock.service.AdminDetailsService;
import com.wedlock.service.CategoryAvailableService;
import com.wedlock.service.CityService;
import com.wedlock.service.FlowerTypeService;
import com.wedlock.service.MailService;
import com.wedlock.service.OccasionService;
import com.wedlock.service.PhotographyOccasionService;
import com.wedlock.service.PhotographyTypeService;
import com.wedlock.service.SellerBankDetailsService;
import com.wedlock.service.SellerInactiveService;
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
	private SellerBankDetailsService sellerBankDetailsService;
	@Autowired
	private SellerInactiveService sellerInactiveService;
	@Autowired
	private FlowerTypeService flowerTypeService;
	@Autowired
	private MailService mailService;
	@Autowired
	private PhotographyTypeService photographyTypeService;
	@Autowired
	private PhotographyOccasionService photographyOccasionService;
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
	@RequestMapping(value = "/admin-addEditFlowerType", method = RequestMethod.POST)
	public @ResponseBody boolean addEditFlowerType(@RequestBody FlowerType flowerType) {
		System.out.println("////Flower Type is"+flowerType.getDescription()+" "+flowerType.getName());
		System.out.println("/////EditFlowerId"+flowerType.getEditId());
		if(flowerType.getEditId() != 0){
			flowerType.setId((flowerType.getEditId()));
		}
		AdminResponseClass adminResponseClass = flowerTypeService.saveFlowerType(flowerType);
		return adminResponseClass.isStatus();
	}

	@RequestMapping(value = "/admin-fetchAllFlowerType", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchAllFlowerType() {
		AdminResponseClass adminResponseClass = flowerTypeService.fetchAllFlowerType();
		return adminResponseClass;
	}

	@RequestMapping(value = "/admin-fetchFlowerTypeById", method = RequestMethod.GET)
	public @ResponseBody AdminResponseClass fetchFlowerTypeById(@RequestParam("id") int id) {
		AdminResponseClass adminResponseClass = flowerTypeService.fetchFlowerTypeById(id);
		return adminResponseClass;
	}

	*/
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
			adminDetails.setPhoneNumber("7003082987");
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
					}
					/*String mssg = "Hello "+sellerDetails.getSellerFirstName()+",Thanks for registering with Wedlock. Your Login Credentials are:- EmailId#"+sellerDetails.getSellerEmailId()+" and Password is#:"+sellerDetails.getSellerPassword()+" .Do not share this login credentials with anyone.";
					String phoneNumber = sellerDetails.getSellerContactNumber();
					URL url = new URL(smsApi.sendSms(mssg, phoneNumber));
					ObjectMapper objectMapper = new ObjectMapper();
					objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
					ApiResponseClass apiResponseClass = objectMapper.readValue(url, ApiResponseClass.class);
					if(apiResponseClass.getTotal_sms() == 0){
						adminResponseClass.setStatus(Boolean.FALSE);
					}*/
					
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
	@RequestMapping(value = "/admin-addEditFlowerType", method= RequestMethod.POST)
	public @ResponseBody boolean adminAddEditFlowerType(@RequestBody FlowerType flowerType) {
		AdminResponseClass adminResponseClass = flowerTypeService.saveFlowerType(flowerType);
		return adminResponseClass.isStatus();
		
	}
}
