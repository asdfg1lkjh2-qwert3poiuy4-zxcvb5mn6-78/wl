package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.State;

public interface StateService {
	public AdminResponseClass saveState(State state);

	public AdminResponseClass fetchAllStates();

	public AdminResponseClass fetchStateById(long id);
}
