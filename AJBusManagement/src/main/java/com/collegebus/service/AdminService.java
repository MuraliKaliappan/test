package com.collegebus.service;

import java.util.List;

import com.collegebus.entity.AdminEntity;
import com.collegebus.model.AdminRouteCostModel;
import com.collegebus.model.RouteCost;

public interface AdminService {

	public AdminEntity getAdminByUserName(String adminUserName);
	
	public void saveRouteCost(RouteCost routeCost);
}
