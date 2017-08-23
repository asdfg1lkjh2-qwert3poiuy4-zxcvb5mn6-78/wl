package com.wedlock.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedlock.dao.CategoryTakenDao;
import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.CategoryTaken;
import com.wedlock.model.SellerDetails;
import com.wedlock.service.CategoryAvailableService;
import com.wedlock.service.CategoryTakenService;

@Transactional
@Service
public class CategoryTakenServiceImpl implements CategoryTakenService{
	@Autowired
	CategoryAvailableService categoryAvailableService;
	@Autowired
	CategoryTakenDao categoryTakenDao;
	@Override
	public AdminResponseClass saveCategoryTaken(SellerDetails sellerDetails, String categoryTakenData) {
		/* categoryTakenData format should be as followed --
		*  CategoryId_StartDate_isAnnually
		*  OR
		*  CategoryId1_StartDate1_isAnnually1,CategoryId2_StartDate2_isAnnually2
		*  LIKE
		*  25_17-08-2018_1
		*  OR
		*  20_15-08-2018_0,22_27-09-2017_1
		*/ 
		boolean status = false;
		AdminResponseClass adminResponseClass = new AdminResponseClass();
		try {
			if(categoryTakenData.contains(","))
			{
				String singleData[] = categoryTakenData.split(",");
				for(String subSingleData : singleData)
				{
					if(!subSingleData.trim().equals(""))
					{
						CategoryTaken categoryTaken = new CategoryTaken();
						status = false;
						String particularSubSingleData[] = subSingleData.split("_");
						AdminResponseClass catData = categoryAvailableService.fetchCategoryAvailableById(Long.parseLong(particularSubSingleData[0].trim()));
						if(!catData.isStatus())
							break;
						categoryTaken.setCategoryAvailable(catData.getCategoryAvailable());
						Date startDate = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH).parse(particularSubSingleData[1].trim());
						categoryTaken.setStartDate(startDate);
						//categoryTaken.setEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(particularSubSingleData[2].trim()));
						if(particularSubSingleData[2].trim().equalsIgnoreCase("Yes"))
						{
							Calendar calendar = Calendar.getInstance();
						    calendar.setTime(startDate);
						    calendar.add(Calendar.DATE, 365);
						    Date endDate = calendar.getTime();
						    categoryTaken.setEndDate(endDate);
							categoryTaken.setAnnually(Boolean.TRUE);
						}
						else
						{
							Calendar calendar = Calendar.getInstance();
						    calendar.setTime(startDate);
						    calendar.add(Calendar.DATE, 180);
						    Date endDate = calendar.getTime();
						    categoryTaken.setEndDate(endDate);
							categoryTaken.setAnnually(Boolean.FALSE);
						}
						categoryTaken.setPaid(Boolean.FALSE);
						categoryTaken.setStatus(Boolean.TRUE);
						//categoryTaken.setSellerDetails(sellerDetails);
						categoryTakenDao.save(categoryTaken);
						status = true;
					}
				}
			}
			else
			{
				CategoryTaken categoryTaken = new CategoryTaken();
				if(!categoryTakenData.trim().equals(""))
				{
					status = false;
					String particularSubSingleData[] = categoryTakenData.split("_");
					AdminResponseClass catData = categoryAvailableService.fetchCategoryAvailableById(Long.parseLong(particularSubSingleData[0].trim()));
					
					categoryTaken.setCategoryAvailable(catData.getCategoryAvailable());
					Date startDate = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH).parse(particularSubSingleData[1].trim());
					categoryTaken.setStartDate(startDate);
					//categoryTaken.setEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(particularSubSingleData[2].trim()));
					if(particularSubSingleData[2].trim().equalsIgnoreCase("Yes"))
					{
						Calendar calendar = Calendar.getInstance();
					    calendar.setTime(startDate);
					    calendar.add(Calendar.DATE, 365);
					    Date endDate = calendar.getTime();
					    categoryTaken.setEndDate(endDate);
						categoryTaken.setAnnually(Boolean.TRUE);
					}
					else
					{
						Calendar calendar = Calendar.getInstance();
					    calendar.setTime(startDate);
					    calendar.add(Calendar.DATE, 180);
					    Date endDate = calendar.getTime();
					    categoryTaken.setEndDate(endDate);
						categoryTaken.setAnnually(Boolean.FALSE);
					}
					categoryTaken.setPaid(Boolean.FALSE);
					categoryTaken.setStatus(Boolean.TRUE);
					//categoryTaken.setSellerDetails(sellerDetails);
					if(!catData.isStatus())
					{
						categoryTakenDao.save(categoryTaken);
						status = true;
					}
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		adminResponseClass.setStatus(status);
		return adminResponseClass;
	}

}
