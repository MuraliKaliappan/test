package com.collegebus.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.collegebus.entity.AdminEntity;
import com.collegebus.entity.StudentEntity;
import com.collegebus.model.AdminLoginModel;
import com.collegebus.model.RegistrationModel;
import com.collegebus.model.StudentLoginModel;
import com.collegebus.service.AdminService;
import com.collegebus.service.StudentService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private StudentService studentService;

	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("Welcome home! ");
		return "home";
	}

	@RequestMapping(value = "/showRegistration", method = RequestMethod.GET)
	public String showRegistration() {
		logger.info("Welcome to the Registration page! ");
		return "registration";
	}

	@RequestMapping(value = "/saveRegistration", method = RequestMethod.POST)
	public ModelAndView saveRegistrationForm(@ModelAttribute("registration") RegistrationModel registration) {

		ModelAndView model = new ModelAndView("home");

		if (studentService.getStudentByEmail(registration.getEmailId()) == null) {
			studentService.saveRegistration(registration);
			model.addObject("result", "Your Registration was successfully saved");
		} else {
			model.addObject("result", "Username (EMail ID) already exists!");
		}

		return model;
	}

	@RequestMapping(value = "/showStudentLogin", method = RequestMethod.GET)
	public String showStudentLogin() {
		logger.info("Welcome to the Student's Login page! ");
		return "studentLogin";
	}

	@RequestMapping(value = "/showAdminLogin", method = RequestMethod.GET)
	public String showAdminLogin() {
		logger.info("Welcome to the Admin's Login page!");
		return "adminLogin";
	}

		
}
