package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.ZipCode;

public interface ZipCodeService {
	AdminResponseClass saveZipCode(ZipCode zipCode, String zipCodeValues[]);
	AdminResponseClass fetchAllZipCodes();
	AdminResponseClass fetchZipCodeById(long id);
	AdminResponseClass fetchZipCodeByCityId(long id);

}
