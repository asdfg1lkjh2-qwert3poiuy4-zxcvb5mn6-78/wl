package com.wedlock.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.TestModelDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.TestModel;
import com.wedlock.service.TestModelService;

@Transactional//(rollbackFor = {Exception.class})
@Service
public class TestModelServiceImpl implements TestModelService
{
	@Autowired
	TestModelDao testModelDao;
	@Override
	public AdminResponseClass fetchAllTestModel() {
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		List<TestModel> testModel = testModelDao.findAll();
		status = true;
		adminResponseClass.setEvent(testModel);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
