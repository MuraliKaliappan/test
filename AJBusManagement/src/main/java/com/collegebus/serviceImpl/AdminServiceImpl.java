package com.collegebus.serviceImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collegebus.dao.AdminDao;
import com.collegebus.entity.AdminEntity;
import com.collegebus.entity.RouteCostEntity;
import com.collegebus.model.AdminRouteCostModel;
import com.collegebus.model.RouteCost;
import com.collegebus.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public AdminEntity getAdminByUserName(String adminUserName) {
		// TODO Auto-generated method stub
		AdminEntity adminEntity = (AdminEntity) adminDao.getAdminByUserName(adminUserName);
		return adminEntity;
	}

	@Override
	public void saveRouteCost(RouteCost routeCosts) {
		
		for(AdminRouteCostModel adminRouteCostModel :routeCosts.getAdminRouteCostModels()) {
			
			RouteCostEntity costEntity = new RouteCostEntity();
			costEntity.setRouteName(adminRouteCostModel.getRouteName());
			costEntity.setAmount(adminRouteCostModel.getAmount());
			
			adminDao.saveRouteCost(costEntity);
			
		}		
	}



}
