package com.collegebus.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.collegebus.entity.AdminEntity;
import com.collegebus.model.AdminLoginModel;
import com.collegebus.model.AdminRouteCostModel;
import com.collegebus.model.AdminTripMangementModel;
import com.collegebus.model.RouteCost;
import com.collegebus.service.AdminService;


@Controller
@RequestMapping("admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showAdmin() {
		return "homeOfStudent";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView adminLogin(@ModelAttribute("admin") AdminLoginModel admin) {
		logger.info("Welcome adminLogin ");

		AdminEntity adminEntity = adminService.getAdminByUserName(admin.getAdminName());

		ModelAndView model = null;
		if (adminEntity != null) {
			if (admin.getAdminPassword().equals(adminEntity.getAdminPassword())) {
				logger.info("Welcome student ");

				model = new ModelAndView("admin/homeOfAdmin");
				
			} else {
				logger.info("Invalid admin ");
				model = new ModelAndView("home");
				model.addObject("result", "Invalid AdminName or AdminPassword");
				
			}
		} else {
			model = new ModelAndView("home");
			model.addObject("result", "Invalid AdminName or AdminPassword");
			
		}
		
		return model;

	}
	
	@RequestMapping(value = "/showTripManagement", method = RequestMethod.GET)
	public String showTripManagement() {
		return "admin/tripManagement";
	}

	@RequestMapping(value="getTripDetails",method = RequestMethod.POST)
	public ModelAndView getTripDetails(@ModelAttribute("tripManagement") AdminTripMangementModel adminTripMangementModel){
		
		
		return null;
	}
	
	@RequestMapping(value = "/showRouteCost", method = RequestMethod.GET)
	public ModelAndView showRouteCost() {
		ModelAndView model = new ModelAndView("admin/routeCost");		
		return model;
	}
	
	@RequestMapping(value = "/saveRouteCost", method = RequestMethod.POST)
	public String saveRouteCost(@ModelAttribute("routeCost") RouteCost routeCost) {
		
		adminService.saveRouteCost(routeCost);
		
		return "admin/routeCost";
	}


}
