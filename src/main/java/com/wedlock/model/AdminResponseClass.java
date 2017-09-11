package com.wedlock.model;

import java.util.List;

public class AdminResponseClass {

	private boolean status;
	private int countRows;
	private String lastId;
	private String mssgStatus;
	
	/*For State*/
	private List<State> listAllStates;
	private State state;
	
	/*For City*/
	private List<City> listAllCities;
	private City city;
	
	/*For ZipCode*/
	private List<ZipCode> listAllZipCodes;
	private ZipCode zipCode;

	//For Flower
	private List<Flower> listAllFlower;
	private Flower flower;
	
	/*For Category Available*/
	private List<CategoryAvailable> categoryAvailables;
	private CategoryAvailable categoryAvailable;
	
	/*For Occasion*/
	private List<Occasion> listAllOccasion;
	private Occasion occasion;
	
	/*For Admin Details*/
	private List<AdminDetails> adminDetails;
	private AdminDetails adminDetail;
	
	/*For Sub Category Available*/
	private List<SubCategoryAvailable> subCategoryAvailables;
	private SubCategoryAvailable subCategoryAvailable;
	
	/*For Seller*/
	private List<SellerDetails> sellerDetails;
	private SellerDetails sellerDetail;
	
	/*For Seller Bank Details*/
	private List<SellerBankDetails> sellerBankDetails;
	private SellerBankDetails sellerBankDetail;
	
	/*For Seller Inactive Details*/
	private List<SellerInactiveDetails> sellerInactiveDetails;
	private SellerInactiveDetails sellerInactiveDetail;

	/*For Product Type*/
	private List<ProductType> listAllProductTypes;
	private ProductType productType;
	
	/*For Photography Type*/
	private List<PhotographyType> listAllPhotographyTypes;
	private PhotographyType photographyType;
	
	/*For Photography Occasion*/
	private List<PhotographyOccasion> listAllPhotographyOccasions;
	private PhotographyOccasion photographyOccasion;
	
	/*For Seller Photographer*/
	private List<SellerPhotographer> listSellerPhotographers;
	private SellerPhotographer sellerPhotographer;
	
	/*For Seller ImagesVideos*/
	private List<SellerProductImagesVideos> listProductImagesVideos;
	private SellerProductImagesVideos sellerProductImageVideo;
	
	/*For Seller ProductPricings*/
	private List<SellerProductPricing> listProductPricings;
	private SellerProductPricing sellerProductPricing;
	
	/*For Seller ProductDiscount*/
	private List<SellerDiscount> listSellerDiscount;
	private SellerDiscount sellerDiscount;
	
	/*For Seller PhotographyOccasions*/
	private List<SellerPhotographyOccasion> listPhotographyOccasions;
	private SellerPhotographyOccasion sellerPhotographyOccasion;
	
	/*For AllProducts*/
	private List<AllProducts> listAllProducts;
	private AllProducts allProducts;
	
	/*For IntProductOccasion*/
	private List<IntProductOccasion> listIntProductOccasion;
	private IntProductOccasion intProductOccasion;
	
	/*For General Product*/
	private List<GeneralProduct> listGeneralProduct;
	private GeneralProduct generalProduct;
    
	/*For Food Type*/
	private List<FoodType> listFoodType;
	private FoodType foodType;
	
	/*For Food*/
	private List<Food> listFood;
	private Food food;
	
	/*For Frees Product*/
	private List<FreesProduct> listFreesProducts;
	private FreesProduct freesProduct;
	
	/*For Caterer Product*/
	private List<Caterer> listAllCaterer;
	private Caterer caterer;
	
	/*For FoodOfPackage Product*/
	private List<FoodOfPackage> listFoodOfPackage;
	private FoodOfPackage foodOfPackage;
	
	/*For Caterer Product*/
	private List<Halls> listAllHalls;
	private Halls hall;

	/*For TestModel*/
	private List<TestModel> event;
	private TestModel singleEvent;
	
	// Setters And Getters

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<State> getListAllStates() {
		return listAllStates;
	}

	public void setListAllStates(List<State> listAllStates) {
		this.listAllStates = listAllStates;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public List<City> getListAllCities() {
		return listAllCities;
	}

	public void setListAllCities(List<City> listAllCities) {
		this.listAllCities = listAllCities;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public List<ZipCode> getListAllZipCodes() {
		return listAllZipCodes;
	}

	public void setListAllZipCodes(List<ZipCode> listAllZipCodes) {
		this.listAllZipCodes = listAllZipCodes;
	}

	public ZipCode getZipCode() {
		return zipCode;
	}

	public void setZipCode(ZipCode zipCode) {
		this.zipCode = zipCode;
	}

	public List<Flower> getListAllFlower() {
		return listAllFlower;
	}

	public void setListAllFlower(List<Flower> listAllFlower) {
		this.listAllFlower = listAllFlower;
	}

	public Flower getFlower() {
		return flower;
	}

	public void setFlower(Flower flower) {
		this.flower = flower;
	}

	public List<CategoryAvailable> getCategoryAvailables() {
		return categoryAvailables;
	}

	public void setCategoryAvailables(List<CategoryAvailable> categoryAvailables) {
		this.categoryAvailables = categoryAvailables;
	}

	public CategoryAvailable getCategoryAvailable() {
		return categoryAvailable;
	}

	public void setCategoryAvailable(CategoryAvailable categoryAvailable) {
		this.categoryAvailable = categoryAvailable;
	}

	public List<Occasion> getListAllOccasion() {
		return listAllOccasion;
	}

	public void setListAllOccasion(List<Occasion> listAllOccasion) {
		this.listAllOccasion = listAllOccasion;
	}

	public Occasion getOccasion() {
		return occasion;
	}

	public void setOccasion(Occasion occasion) {
		this.occasion = occasion;
	}

	public List<AdminDetails> getAdminDetails() {
		return adminDetails;
	}

	public void setAdminDetails(List<AdminDetails> adminDetails) {
		this.adminDetails = adminDetails;
	}

	public AdminDetails getAdminDetail() {
		return adminDetail;
	}

	public void setAdminDetail(AdminDetails adminDetail) {
		this.adminDetail = adminDetail;
	}

	public int getCountRows() {
		return countRows;
	}

	public void setCountRows(int countRows) {
		this.countRows = countRows;
	}

	public List<SubCategoryAvailable> getSubCategoryAvailables() {
		return subCategoryAvailables;
	}

	public void setSubCategoryAvailables(List<SubCategoryAvailable> subCategoryAvailables) {
		this.subCategoryAvailables = subCategoryAvailables;
	}

	public SubCategoryAvailable getSubCategoryAvailable() {
		return subCategoryAvailable;
	}

	public void setSubCategoryAvailable(SubCategoryAvailable subCategoryAvailable) {
		this.subCategoryAvailable = subCategoryAvailable;
	}

	public List<SellerDetails> getSellerDetails() {
		return sellerDetails;
	}

	public void setSellerDetails(List<SellerDetails> sellerDetails) {
		this.sellerDetails = sellerDetails;
	}

	public SellerDetails getSellerDetail() {
		return sellerDetail;
	}

	public void setSellerDetail(SellerDetails sellerDetail) {
		this.sellerDetail = sellerDetail;
	}

	public String getLastId() {
		return lastId;
	}

	public void setLastId(String lastId) {
		this.lastId = lastId;
	}

	public String getMssgStatus() {
		return mssgStatus;
	}

	public void setMssgStatus(String mssgStatus) {
		this.mssgStatus = mssgStatus;
	}

	public List<SellerBankDetails> getSellerBankDetails() {
		return sellerBankDetails;
	}

	public void setSellerBankDetails(List<SellerBankDetails> sellerBankDetails) {
		this.sellerBankDetails = sellerBankDetails;
	}

	public SellerBankDetails getSellerBankDetail() {
		return sellerBankDetail;
	}

	public void setSellerBankDetail(SellerBankDetails sellerBankDetail) {
		this.sellerBankDetail = sellerBankDetail;
	}

	public List<SellerInactiveDetails> getSellerInactiveDetails() {
		return sellerInactiveDetails;
	}

	public void setSellerInactiveDetails(List<SellerInactiveDetails> sellerInactiveDetails) {
		this.sellerInactiveDetails = sellerInactiveDetails;
	}

	public SellerInactiveDetails getSellerInactiveDetail() {
		return sellerInactiveDetail;
	}

	public void setSellerInactiveDetail(SellerInactiveDetails sellerInactiveDetail) {
		this.sellerInactiveDetail = sellerInactiveDetail;
	}

	public List<ProductType> getListAllProductTypes() {
		return listAllProductTypes;
	}

	public void setListAllProductTypes(List<ProductType> listAllProductTypes) {
		this.listAllProductTypes = listAllProductTypes;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public List<PhotographyType> getListAllPhotographyTypes() {
		return listAllPhotographyTypes;
	}

	public void setListAllPhotographyTypes(List<PhotographyType> listAllPhotographyTypes) {
		this.listAllPhotographyTypes = listAllPhotographyTypes;
	}

	public PhotographyType getPhotographyType() {
		return photographyType;
	}

	public void setPhotographyType(PhotographyType photographyType) {
		this.photographyType = photographyType;
	}

	public List<PhotographyOccasion> getListAllPhotographyOccasions() {
		return listAllPhotographyOccasions;
	}

	public void setListAllPhotographyOccasions(List<PhotographyOccasion> listAllPhotographyOccasions) {
		this.listAllPhotographyOccasions = listAllPhotographyOccasions;
	}

	public PhotographyOccasion getPhotographyOccasion() {
		return photographyOccasion;
	}

	public void setPhotographyOccasion(PhotographyOccasion photographyOccasion) {
		this.photographyOccasion = photographyOccasion;
	}

	public List<SellerPhotographer> getListSellerPhotographers() {
		return listSellerPhotographers;
	}

	public void setListSellerPhotographers(List<SellerPhotographer> listSellerPhotographers) {
		this.listSellerPhotographers = listSellerPhotographers;
	}

	public SellerPhotographer getSellerPhotographer() {
		return sellerPhotographer;
	}

	public void setSellerPhotographer(SellerPhotographer sellerPhotographer) {
		this.sellerPhotographer = sellerPhotographer;
	}

	public List<SellerProductImagesVideos> getListProductImagesVideos() {
		return listProductImagesVideos;
	}

	public void setListProductImagesVideos(List<SellerProductImagesVideos> listProductImagesVideos) {
		this.listProductImagesVideos = listProductImagesVideos;
	}

	public SellerProductImagesVideos getSellerProductImageVideo() {
		return sellerProductImageVideo;
	}

	public void setSellerProductImageVideo(SellerProductImagesVideos sellerProductImageVideo) {
		this.sellerProductImageVideo = sellerProductImageVideo;
	}

	public List<SellerProductPricing> getListProductPricings() {
		return listProductPricings;
	}

	public void setListProductPricings(List<SellerProductPricing> listProductPricings) {
		this.listProductPricings = listProductPricings;
	}

	public SellerProductPricing getSellerProductPricing() {
		return sellerProductPricing;
	}

	public void setSellerProductPricing(SellerProductPricing sellerProductPricing) {
		this.sellerProductPricing = sellerProductPricing;
	}

	public List<SellerDiscount> getListSellerDiscount() {
		return listSellerDiscount;
	}

	public void setListSellerDiscount(List<SellerDiscount> listSellerDiscount) {
		this.listSellerDiscount = listSellerDiscount;
	}

	public SellerDiscount getSellerDiscount() {
		return sellerDiscount;
	}

	public void setSellerDiscount(SellerDiscount sellerDiscount) {
		this.sellerDiscount = sellerDiscount;
	}

	public List<SellerPhotographyOccasion> getListPhotographyOccasions() {
		return listPhotographyOccasions;
	}

	public void setListPhotographyOccasions(List<SellerPhotographyOccasion> listPhotographyOccasions) {
		this.listPhotographyOccasions = listPhotographyOccasions;
	}

	public SellerPhotographyOccasion getSellerPhotographyOccasion() {
		return sellerPhotographyOccasion;
	}

	public void setSellerPhotographyOccasion(SellerPhotographyOccasion sellerPhotographyOccasion) {
		this.sellerPhotographyOccasion = sellerPhotographyOccasion;
	}

	public List<AllProducts> getListAllProducts() {
		return listAllProducts;
	}

	public void setListAllProducts(List<AllProducts> listAllProducts) {
		this.listAllProducts = listAllProducts;
	}

	public AllProducts getAllProducts() {
		return allProducts;
	}

	public void setAllProducts(AllProducts allProducts) {
		this.allProducts = allProducts;
	}

	public List<IntProductOccasion> getListIntProductOccasion() {
		return listIntProductOccasion;
	}

	public void setListIntProductOccasion(List<IntProductOccasion> listIntProductOccasion) {
		this.listIntProductOccasion = listIntProductOccasion;
	}

	public IntProductOccasion getIntProductOccasion() {
		return intProductOccasion;
	}

	public void setIntProductOccasion(IntProductOccasion intProductOccasion) {
		this.intProductOccasion = intProductOccasion;
	}

	public List<GeneralProduct> getListGeneralProduct() {
		return listGeneralProduct;
	}

	public void setListGeneralProduct(List<GeneralProduct> listGeneralProduct) {
		this.listGeneralProduct = listGeneralProduct;
	}

	public GeneralProduct getGeneralProduct() {
		return generalProduct;
	}

	public void setGeneralProduct(GeneralProduct generalProduct) {
		this.generalProduct = generalProduct;
	}

	public List<FreesProduct> getListFreesProducts() {
		return listFreesProducts;
	}

	public void setListFreesProducts(List<FreesProduct> listFreesProducts) {
		this.listFreesProducts = listFreesProducts;
	}

	public FreesProduct getFreesProduct() {
		return freesProduct;
	}

	public void setFreesProduct(FreesProduct freesProduct) {
		this.freesProduct = freesProduct;
	}

	public List<FoodType> getListFoodType() {
		return listFoodType;
	}

	public void setListFoodType(List<FoodType> listFoodType) {
		this.listFoodType = listFoodType;
	}

	public FoodType getFoodType() {
		return foodType;
	}

	public void setFoodType(FoodType foodType) {
		this.foodType = foodType;
	}

	public List<Food> getListFood() {
		return listFood;
	}

	public void setListFood(List<Food> listFood) {
		this.listFood = listFood;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public List<Caterer> getListAllCaterer() {
		return listAllCaterer;
	}

	public void setListAllCaterer(List<Caterer> listAllCaterer) {
		this.listAllCaterer = listAllCaterer;
	}

	public Caterer getCaterer() {
		return caterer;
	}

	public void setCaterer(Caterer caterer) {
		this.caterer = caterer;
	}

	public List<FoodOfPackage> getListFoodOfPackage() {
		return listFoodOfPackage;
	}

	public void setListFoodOfPackage(List<FoodOfPackage> listFoodOfPackage) {
		this.listFoodOfPackage = listFoodOfPackage;
	}

	public FoodOfPackage getFoodOfPackage() {
		return foodOfPackage;
	}

	public void setFoodOfPackage(FoodOfPackage foodOfPackage) {
		this.foodOfPackage = foodOfPackage;
	}

	public List<Halls> getListAllHalls() {
		return listAllHalls;
	}

	public void setListAllHalls(List<Halls> listAllHalls) {
		this.listAllHalls = listAllHalls;
	}

	public Halls getHall() {
		return hall;
	}

	public void setHall(Halls hall) {
		this.hall = hall;
	}

	public List<TestModel> getEvent() {
		return event;
	}

	public void setEvent(List<TestModel> event) {
		this.event = event;
	}

	public TestModel getSingleEvent() {
		return singleEvent;
	}

	public void setSingleEvent(TestModel singleEvent) {
		this.singleEvent = singleEvent;
	}

}
