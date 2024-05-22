package com.asystem.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="FACULTYFEESTABLE")
public class FacultyFeesTable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int facultyfeesid;
	private String facultyname;
	private String accountname;
	private long accountno;
	private long feestobepay;
	
	public int getFacultyfeesid() {
		return facultyfeesid;
	}
	public void setFacultyfeesid(int facultyfeesid) {
		this.facultyfeesid = facultyfeesid;
	}
	public String getFacultyname() {
		return facultyname;
	}
	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}
	public String getAccountname() {
		return accountname;
	}
	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}
	public long getAccountno() {
		return accountno;
	}
	public void setAccountno(long accountno) {
		this.accountno = accountno;
	}
	public long getFeestobepay() {
		return feestobepay;
	}
	public void setFeestobepay(long feestobepay) {
		this.feestobepay = feestobepay;
	}
	public FacultyFeesTable() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
