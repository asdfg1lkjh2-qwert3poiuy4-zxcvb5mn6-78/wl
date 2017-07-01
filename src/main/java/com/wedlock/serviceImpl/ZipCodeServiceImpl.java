package com.wedlock.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CityDao;
import com.wedlock.dao.ZipCodeDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.City;
import com.wedlock.model.ZipCode;
import com.wedlock.service.ZipCodeService;

@Transactional
@Service
public class ZipCodeServiceImpl implements ZipCodeService {

	@Autowired
	private ZipCodeDao zipCodeDao;

	@Autowired
	private CityDao cityDao;
	@PersistenceContext
	EntityManager manager;

	@Override
	public AdminResponseClass saveZipCode(ZipCode zipCode, String zipCodeValues[]) {
		boolean status = false;

		City city = cityDao.findOne(zipCode.getCityId());
		zipCode.setCity(city);
		zipCodeDao.save(zipCode);
		status = true;

		if(zipCodeValues.length > 0){
			for(int i = 0; i<zipCodeValues.length;i++){
				ZipCode zipCode2 = new ZipCode();
				zipCode2.setCity(city);
				
				String values[] = zipCodeValues[i].split(",");
				zipCode2.setZipCode(values[0]);
				zipCode2.setLocalityName(values[1]);
				
				zipCodeDao.save(zipCode2);
				if(zipCodeDao.save(zipCode2)==null){
					status = false;
					break;
				}
			}
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchAllZipCodes() {
		boolean status = false;

		List<ZipCode> zipCode = zipCodeDao.findAll();
		status = true;

		List<ZipCode> zipCodes = new ArrayList<>();
		for (ZipCode zipCode2 : zipCode) {
			City city = cityDao.findOne(zipCode2.getCityId());
			ZipCode zipCode3 = new ZipCode();

			zipCode3.setId(zipCode2.getId());
			zipCode3.setLocalityName(zipCode2.getLocalityName());
			zipCode3.setCity(city);
			zipCode3.setZipCode(zipCode2.getZipCode());
			
			zipCodes.add(zipCode3);
		}

		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setListAllZipCodes(zipCodes);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchZipCodeById(long id) {
		boolean status = false;
		
		ZipCode zipCode = zipCodeDao.findOne(id);
		
		City city = cityDao.findOne(zipCode.getCityId());
		status = true;
		
		ZipCode zipCode2 = new ZipCode();
		zipCode2.setId(zipCode.getId());
		zipCode2.setLocalityName(zipCode.getLocalityName());
		zipCode2.setZipCode(zipCode.getZipCode());
		zipCode2.setCity(city);
		
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setStatus(status);
		adminResponseClass.setZipCode(zipCode2);
		return adminResponseClass;
	}

	@Override
	public AdminResponseClass fetchZipCodeByCityId(long id) {
		boolean status = false;
		
		Query query = manager.createQuery("Select z from ZipCode z where z.city.id=:id");
		query.setParameter("id", id);
		@SuppressWarnings("unchecked")
		List<ZipCode> listZipCode = query.getResultList();
		status = true;
		
		List<ZipCode> zipCodes = new ArrayList<>();
		for (ZipCode zipCode : listZipCode) {
			ZipCode zipCode2 = new ZipCode();
			zipCode2.setCityId(zipCode.getCity().getId());
			zipCode2.setId(zipCode.getId());
			zipCode2.setZipCode(zipCode.getZipCode());
			zipCode2.setLocalityName(zipCode.getLocalityName());

			zipCodes.add(zipCode2);
		}
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		adminResponseClass.setListAllZipCodes(zipCodes);
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
