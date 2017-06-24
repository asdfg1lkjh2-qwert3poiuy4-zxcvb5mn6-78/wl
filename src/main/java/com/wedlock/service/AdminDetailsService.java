package com.wedlock.service;

import com.wedlock.model.AdminDetails;
import com.wedlock.model.AdminResponseClass;

public interface AdminDetailsService {
	AdminResponseClass saveAdminDetails(AdminDetails adminDetails);
	AdminResponseClass countRowsAdminDetails();
	AdminResponseClass checkAdminLoginCredentials(String username, String password);
}
