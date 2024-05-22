package com.asystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.asystem.dao.FacultyFeesTableRepository;

@Service
public class FacultyFeesTableService {

	@Autowired
	private FacultyFeesTableRepository facultyFeesTableRepository;
	
	
	public Object allFacultys() {
		return facultyFeesTableRepository.findAll();
	}

}
