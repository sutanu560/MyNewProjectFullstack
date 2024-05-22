package com.asystem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asystem.dao.FacultyRepository;
import com.asystem.dao.StudentRepository;
import com.asystem.entities.Faculty;
import com.asystem.entities.Student;

@Controller
public class HomeController {
	
	@Autowired
	private StudentRepository studentRepository;
	

	@Autowired
	private FacultyRepository facultyRepository;
	
	@RequestMapping("/")
	public String basePage() {
		System.out.println("Running");
		return "base";
	}
	
	@RequestMapping("/register")
	public String registerPage() {
		
		return "register";
	}
	
	
	@RequestMapping(value="/registered" , method = RequestMethod.POST)
	public String registeredPage(Student student , Faculty faculty, String role ,  Model model ,HttpSession session) {
		
		System.out.println(role);
		
			if(role.equals("student"))
			{
				student.setRoute("College to Bypass");
				this.studentRepository.save(student);
				
				System.out.println("Student"+student);
				session.setAttribute("message", "Succesfully Registered!!");
				return "register";
			}
			else if(role.equals("faculty"))
			{
				faculty.setRoute("Bypass to College");
				this.facultyRepository.save(faculty);
				
				System.out.println("Faculty"+faculty);
				session.setAttribute("message", "Succesfully Registered!!");
				return "register";
			
			
		}
		return "register";
		
		
	}
}
