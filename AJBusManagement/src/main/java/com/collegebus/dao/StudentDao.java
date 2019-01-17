package com.collegebus.dao;

import com.collegebus.entity.StudentEntity;

public interface StudentDao {

	public void saveRegistration(StudentEntity entity);
	
	public StudentEntity getStudentById(String emailId);
}
