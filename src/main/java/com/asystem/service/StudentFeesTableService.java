package com.asystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asystem.dao.StudentFeesTableRepository;

@Service
public class StudentFeesTableService {

	@Autowired
	private StudentFeesTableRepository studentFeesTableRepository;
	
	public Object allStudents() {
		return studentFeesTableRepository.findAll();
	}

}
