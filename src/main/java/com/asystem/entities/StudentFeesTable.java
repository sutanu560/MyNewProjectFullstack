package com.asystem.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="STUDENTFEESTABLE")
public class StudentFeesTable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int studentfeesid;
	private String studentname;
	private String accountname;
	private long accountno;
	private long feestobepay;
	public int getStudentfeesid() {
		return studentfeesid;
	}
	public void setStudentfeesid(int studentfeesid) {
		this.studentfeesid = studentfeesid;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
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
	
	public StudentFeesTable() {
		super();
	}
	
	
	
}
