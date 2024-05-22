package com.asystem.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BUSROUTE")
public class BusRoute {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int busid;
	private String busno;
	private String routeno;
	private String drivername;
	private String phoneno;
	private String source;
	private String destination;
	private String feesamount;
	private String stop1;
	private String stop2;
	private String stop3;
	private String stop4;
	private String stop5;
	private String stop6;
	private String stop7;
	private String stop8;
	private String stop9;
	private String stop10;
	
	public BusRoute() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBusid() {
		return busid;
	}

	public void setBusid(int busid) {
		this.busid = busid;
	}

	public String getBusno() {
		return busno;
	}

	public void setBusno(String busno) {
		this.busno = busno;
	}

	public String getRouteno() {
		return routeno;
	}

	public void setRouteno(String routeno) {
		this.routeno = routeno;
	}

	public String getDrivername() {
		return drivername;
	}

	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getFeesamount() {
		return feesamount;
	}

	public void setFeesamount(String feesamount) {
		this.feesamount = feesamount;
	}

	public String getStop1() {
		return stop1;
	}

	public void setStop1(String stop1) {
		this.stop1 = stop1;
	}

	public String getStop2() {
		return stop2;
	}

	public void setStop2(String stop2) {
		this.stop2 = stop2;
	}

	public String getStop3() {
		return stop3;
	}

	public void setStop3(String stop3) {
		this.stop3 = stop3;
	}

	public String getStop4() {
		return stop4;
	}

	public void setStop4(String stop4) {
		this.stop4 = stop4;
	}

	public String getStop5() {
		return stop5;
	}

	public void setStop5(String stop5) {
		this.stop5 = stop5;
	}

	public String getStop6() {
		return stop6;
	}

	public void setStop6(String stop6) {
		this.stop6 = stop6;
	}

	public String getStop7() {
		return stop7;
	}

	public void setStop7(String stop7) {
		this.stop7 = stop7;
	}

	public String getStop8() {
		return stop8;
	}

	public void setStop8(String stop8) {
		this.stop8 = stop8;
	}

	public String getStop9() {
		return stop9;
	}

	public void setStop9(String stop9) {
		this.stop9 = stop9;
	}

	public String getStop10() {
		return stop10;
	}

	public void setStop10(String stop10) {
		this.stop10 = stop10;
	}
	
	
	
	
}
