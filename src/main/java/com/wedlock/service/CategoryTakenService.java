package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.SellerDetails;

public interface CategoryTakenService 
{
	AdminResponseClass saveCategoryTaken(SellerDetails sellerDetails, String categoryTakenData);
	/* categoryTakenData format should be as followed --
	*  CategoryId_StartDate_isAnnually
	*  OR
	*  CategoryId1_StartDate1_isAnnually1,CategoryId2_StartDate2_isAnnually2
	*  LIKE
	*  25_17-08-2018_1
	*  OR
	*  20_15-08-2018_0,22_27-09-2017_1
	*/ 
}
