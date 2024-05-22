package com.asystem.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FACULTY")
public class Faculty {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int facultyid;
	private String name;
	private String password;
	private String dob;
	private String department;
	private long phoneno;
	private String address;
	private String route;
	
	public Faculty() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFacultyid() {
		return facultyid;
	}

	public void setFacultyid(int facultyid) {
		this.facultyid = facultyid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public long getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}
	
	@Override
	public String toString() {
		return "Faculty [facultyId=" + facultyid + ", name=" + name + ", dob=" + dob + ", department=" + department
				+ ", phoneNo=" + phoneno + ", address=" + address + ", route=" + route + "]";
	}
	
}
