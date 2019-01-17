package com.collegebus.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collegebus.dao.StudentDao;
import com.collegebus.entity.StudentEntity;
import com.collegebus.model.RegistrationModel;
import com.collegebus.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public void saveRegistration(RegistrationModel registration) {
		
		StudentEntity student = new StudentEntity();
		
		student.setStudentName(registration.getStudentName());
		student.setPassword(registration.getPassword());
		student.setDateOfJoining(registration.getDateOfJoining());
		student.setEmailId(registration.getEmailId());
		
		studentDao.saveRegistration(student);
		
	}

	@Override
	public StudentEntity getStudentByEmail(String emailId) {
	
		return studentDao.getStudentById(emailId);
	}
	
	
}
