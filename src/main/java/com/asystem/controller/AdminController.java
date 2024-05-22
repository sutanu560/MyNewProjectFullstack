package com.asystem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.asystem.dao.BusRepository;
import com.asystem.entities.Admin;
import com.asystem.entities.BusRoute;
import com.asystem.service.AdminService;
import com.asystem.service.BusRouteService;
import com.asystem.service.FacultyFeesTableService;
import com.asystem.service.FacultyService;
import com.asystem.service.StudentFeesTableService;
import com.asystem.service.StudentService;

import org.springframework.ui.Model;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	

	@Autowired
	private StudentService studentService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private FacultyFeesTableService facultyFeesTableService;
	
	@Autowired
	private StudentFeesTableService studentFeesTableService;
	
	
	@Autowired
	private BusRouteService busRouteService;
	
	@Autowired
	private BusRepository busRepository;;
	
	
	
	@RequestMapping("/adminLogin")
	public String adminLogin() {
	
		return "adminLogin";
	}
	
	
	@RequestMapping("/adminValidation")
	public String adminValidation(String name, String password ,BusRoute busRoute , Model model, RedirectAttributes ra) {
		Admin admin=adminService.validate(name, password);
        if(admin==null) {
           model.addAttribute("msg","Incorrect username or password!!");
            return "adminLogin";
        }
        else {
            model.addAttribute("username", name);
            model.addAttribute("role", "Admin");
            model.addAttribute("bus",busRouteService.allBusRoute());
            return "adminPage";
        }
		
	}
	
	
	@RequestMapping("/adminPage")
	public String adminPage(BusRoute busRoute,Model model) {
		model.addAttribute("bus",busRouteService.allBusRoute());
		System.out.println(busRouteService.allBusRoute().toString());
		return "adminPage";
	}
	

	@RequestMapping("/adminBusDetails")
	public String adminBusDetails(String busno, Model model) {
		BusRoute busRoute = busRouteService.validateBus(busno);
		System.out.println(busRoute);
		model.addAttribute("busno",busRoute.getBusno());
		model.addAttribute("routeno",busRoute.getRouteno());
		model.addAttribute("phoneno",busRoute.getPhoneno());
		model.addAttribute("drivername",busRoute.getDrivername());
		model.addAttribute("destination",busRoute.getDestination());
		model.addAttribute("source",busRoute.getSource());
		return "adminBusDetails";
		
	}
	
	
	@RequestMapping("/adminAddBusRoute")
	public String adminAddBusRoute() {
		
		return "adminAddBusRoute";
	}	
	
	
	
	@RequestMapping(value="/adminAddedBusRoute" , method = RequestMethod.POST)
	public String adminAddedBusRoute(HttpSession session, BusRoute busRoute) {
           this.busRepository.save(busRoute);
			
			System.out.println("BusRoute"+busRoute);
			session.setAttribute("message", "Bus Details Added Succesfully!!");
			return "adminAddBusRoute";
		
		
	}
	
	
	@RequestMapping("/adminViewUserDetails")
	public String adminViewUserDetails(Model model) {
		
		model.addAttribute("students", studentService.allStudents());
		model.addAttribute("facultys", facultyService.allFacultys());
		
		return "adminViewUserDetails";
	}
	
	
	@RequestMapping("/adminViewFeesPayDetails")
	public String adminViewFeesPayDetails(Model model) {
		model.addAttribute("studentfees", studentFeesTableService.allStudents());
		model.addAttribute("facultyfees", facultyFeesTableService.allFacultys());
		return "adminViewFeesPayDetails";
	}
	
	
	@RequestMapping("/adminLogout")
	public String adminLogout() {
	
		return "base";
	}
	
	
}
