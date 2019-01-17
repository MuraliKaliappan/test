package com.collegebus.dao;

import com.collegebus.entity.AdminEntity;
import com.collegebus.entity.RouteCostEntity;

public interface AdminDao {

	public AdminEntity getAdminByUserName(String userName);
	
	public void saveRouteCost(RouteCostEntity costEntity);
}
