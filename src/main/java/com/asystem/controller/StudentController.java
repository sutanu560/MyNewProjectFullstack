package com.asystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import com.asystem.dao.StudentFeesTableRepository;
import com.asystem.dao.StudentRepository;
import com.asystem.entities.Student;
import com.asystem.entities.StudentFeesTable;
import com.asystem.service.BusRouteService;
import com.asystem.service.StudentService;

@Controller
public class StudentController {
	
	String nam;
	String pass;
	String flag;
	String flag1;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private BusRouteService busRouteService;
	
	@Autowired
	private StudentFeesTableRepository studentFeesTableRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	
	@RequestMapping("/studentLogin")
	public String studentLogin() {
		
		return "studentLogin";
	}
	
	
	@RequestMapping("/studentValidation")
	public String studentValidation(String name, String password , Model model) {
		Student student = studentService.validate(name, password);
        if(student==null) {
           model.addAttribute("msg","Incorrect username or password!!");
            return "studentLogin";
        }
        else {
            model.addAttribute("name", name);
            model.addAttribute("role", "Student");
            
            this.nam=name;
            this.pass=password;
            this.flag=nam;
            this.flag1=nam;
            return "studentPage";
        }
		
	}
	
	@RequestMapping("/studentPage")
	public String studentPage() {
		
		return "studentPage";
	}
	
	@RequestMapping("/studentViewProfile")
	public String studentViewProfile( Model model) {
		
		Student student = studentService.validate(nam, pass);
        
        model.addAttribute("student",student);
		return "studentViewProfile";
	}
	
	
	//update form of student
	@RequestMapping("/updateStudentProfile/{studentid}")
	public String studentUpdateProfile(@PathVariable int studentid, Model model) {
		
		Student student = this.studentRepository.findById(studentid).get();
		System.out.println(studentid);
		
		System.out.println(student.toString());
		model.addAttribute("update",student);
		
		return "updateStudentProfile";
	
	}
	
	//updated data in db
	@RequestMapping("/updatedProfile")
	public String updatedProfile(@ModelAttribute("updatestudent")Student student,Model model) {
		
		student.setRoute("College to Bypass");
		this.studentRepository.save(student);
        Student student1 = studentService.validate(nam, pass);
        
        model.addAttribute("student",student1);
		model.addAttribute("msg","Your Data Successfully Updated!!");
		return "studentViewProfile";
	}
	
	
	@RequestMapping("/studentBusRoute")
	public String studentBusRoute(Model model) {
		model.addAttribute("busRoute", busRouteService.allBusRoute());
		return "studentBusRoute";
	}
	
	
	@RequestMapping("/studentEnroll")
	public String studentEnroll(Model model) {
		model.addAttribute("busRoute", busRouteService.allBusRoute());
		model.addAttribute("msg","You are successfully enrolled!! (Please Note All the details related to bus)");
		return "studentBusRoute";
	}
	
	
	@RequestMapping("/studentPayFees")
	public String studentPayFees(StudentFeesTable studentFeesTable,Model model) {
		model.addAttribute("student",nam);

			if(flag.equals("suraj"))
			{
					studentFeesTable.setFeestobepay(410);
					flag="false";
			}
			else if(nam.equals("rahul"))
			{
					studentFeesTable.setFeestobepay(475);
					flag="false";
			}
		
		model.addAttribute("rem_amt",studentFeesTable.getFeestobepay());
		return "studentPayFees";
	}
	
	@RequestMapping("/studentPayment")
	public String studentPayment(StudentFeesTable studentFeesTable,long feestobepay,Model model) {
		if(flag1.equals(nam)) 
		{
				this.studentFeesTableRepository.save(studentFeesTable);
				studentFeesTable.setStudentname(nam);
				model.addAttribute("msg","Payment Successfully Done!!");
				studentFeesTable.setFeestobepay(studentFeesTable.getFeestobepay()-feestobepay);
				flag1="false";
				return "studentPayFees";
		}
		else {
			model.addAttribute("msg","Payment Successfully Done!!");
			studentFeesTable.setFeestobepay(studentFeesTable.getFeestobepay()-feestobepay);
			
			return "studentPayFees";
		}

	}
	
	@RequestMapping("/studentLogout")
	public String studentLogout() {
	
		return "base";
	}
}
