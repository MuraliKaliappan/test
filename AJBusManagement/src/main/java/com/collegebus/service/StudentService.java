package com.collegebus.service;

import com.collegebus.entity.StudentEntity;
import com.collegebus.model.RegistrationModel;

public interface StudentService {

	public void saveRegistration(RegistrationModel registration);
	
	public StudentEntity getStudentByEmail(String emailId);
	
}
