package com.asystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asystem.dao.FacultyFeesTableRepository;
import com.asystem.dao.FacultyRepository;
import com.asystem.entities.Faculty;
import com.asystem.entities.FacultyFeesTable;
import com.asystem.service.BusRouteService;
import com.asystem.service.FacultyService;


@Controller
public class FacultyController {
	
	@Autowired
	private FacultyService facultyService;
	
	
	@Autowired
	private BusRouteService busRouteService;
	
	@Autowired
	private FacultyFeesTableRepository facultyFeesTableRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	
	
	String nam;
	String pass;
	String flag;
	String flag1;
	
	@GetMapping("/facultyLogin")
	public String facultyLogin() {
		
		return "facultyLogin";
	}

	
	@RequestMapping("/facultyValidation")
	public String facultyValidation(String name, String password , Model model) {
		Faculty faculty = facultyService.validate(name, password);
		System.out.println(faculty);
        if(faculty==null) {
           model.addAttribute("msg","Incorrect username or password!!");
            return "facultyLogin";
        }
        else {
            model.addAttribute("name", name);
            model.addAttribute("role", "faculty");
            this.nam=name;
            this.pass=password;
            this.flag=nam;
            this.flag1=nam;

            return "facultyPage";
        }
		
	}
	
	
	
	@RequestMapping("/facultyPage")
	public String facultyPage() {
	
		return "facultyPage";
	}
	
	@RequestMapping("/facultyViewProfile")
	public String facultyViewProfile(Model model) {
		Faculty faculty = facultyService.validate(nam, pass);
        
        model.addAttribute("faculty",faculty);
		return "facultyViewProfile";
	}
	
	
	
	//update form of student
	@RequestMapping("/updateFacultyProfile/{facultyid}")
	public String studentUpdateProfile(@PathVariable int facultyid, Model model) {
			
		Faculty faculty = this.facultyRepository.findById(facultyid).get();
		System.out.println(facultyid);
			
		System.out.println(faculty.toString());
		model.addAttribute("update",faculty);
			
		return "updateFacultyProfile";

		}
	
		
	//updated data in db
	@RequestMapping("/updatedFacultyProfile")
	public String updatedProfile(@ModelAttribute("updatefaculty")Faculty faculty,Model model) {
			
		faculty.setRoute("Bypass to College");
		this.facultyRepository.save(faculty);
	    Faculty faculty1 = facultyService.validate(nam, pass);
	        
	    model.addAttribute("faculty",faculty1);
		model.addAttribute("msg","Your Data Successfully Updated!!");
		return "facultyViewProfile";
	}
		
	
	@RequestMapping("/facultyBusRoute")
	public String facultyBusRoute(Model model) {
		model.addAttribute("busRoute", busRouteService.allBusRoute());
		return "facultyBusRoute";
	}
	
	
	
	@RequestMapping("/facultyEnroll")
	public String facultyEnroll(Model model) {
		model.addAttribute("busRoute", busRouteService.allBusRoute());
		model.addAttribute("msg","You are successfully enrolled!! (Please Note All the details related to bus)");
		return "facultyBusRoute";
	}
	
	
	@RequestMapping("/facultyPayFees")
	public String facultyPayFees(FacultyFeesTable facultyFeesTable,Model model) {
		model.addAttribute("faculty",nam);

		if(flag.equals("ramesh"))
		{
				facultyFeesTable.setFeestobepay(410);
				flag="false";
		}
		else if(nam.equals("rahul"))
		{
				facultyFeesTable.setFeestobepay(475);
				flag="false";
		}
	
	    model.addAttribute("rem_amt",facultyFeesTable.getFeestobepay());
		return "facultyPayFees";
	}
	
	
	
	@RequestMapping("/facultyPayment")
	public String studentPayment(FacultyFeesTable facultyFeesTable,long feestobepay,Model model) {
		if(flag1.equals(nam)) 
		{
				this.facultyFeesTableRepository.save(facultyFeesTable);
				facultyFeesTable.setFacultyname(nam);
				model.addAttribute("msg","Payment Successfully Done!!");
				facultyFeesTable.setFeestobepay(facultyFeesTable.getFeestobepay()-feestobepay);
				flag1="false";
				return "facultyPayFees";
		}
		else {
			model.addAttribute("msg","Payment Successfully Done!!");
			facultyFeesTable.setFeestobepay(facultyFeesTable.getFeestobepay()-feestobepay);
			
			return "facultyPayFees";
		}

	}
	
	
	@RequestMapping("/facultyLogout")
	public String facultyLogout() {
	
		return "base";
	}
	
}
