package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wedlock.dao.StateDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.State;
import com.wedlock.service.StateService;

@Transactional
@Service
public class StateServiceImpl implements StateService {

	@Autowired
	private StateDao stateDao;
	
	@Override
	public AdminResponseClass saveState(State state) {
		boolean status = false;
		stateDao.save(state);
		status = true;

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllStates() {

		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		List<State> listState = stateDao.findAll(new Sort(Sort.Direction.ASC, "stateName"));
		status = true;

		
		List<State> state3 = new ArrayList<>();
		for(State state:listState){
			State state5 = new State();
			state5.setId(state.getId());
			state5.setStateName(state.getStateName());
			state5.setStateDescription(state.getStateDescription());
			state3.add(state5);
		}
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllStates(state3);

		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchStateById(long id) {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		State state = stateDao.findOne(id);
		status = true;
		adminResponseClass.setStatus(status);
		
		State state3 = new State();
		state3.setId(state.getId());
		state3.setStateName(state.getStateName());
		state3.setStateDescription(state.getStateDescription());
		
		adminResponseClass.setState(state3);
		return adminResponseClass;
	}



}
