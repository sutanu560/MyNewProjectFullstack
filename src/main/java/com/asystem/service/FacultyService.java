package com.asystem.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asystem.dao.FacultyRepository;
import com.asystem.entities.Faculty;

@Service
public class FacultyService {

	@Autowired
	private FacultyRepository facultyRepository;
	
	
	public Faculty validate(String name , String password) {
		Optional<Faculty> faculty = facultyRepository.findByName(name);
		if(faculty.isPresent())
		{	
			if(faculty.get().getPassword().equals(password))
			{
				System.out.println(faculty.get().toString());
				return faculty.get();			}
			else
			{
				return null;
			}
		}
		
		else
		{
			return null;
		}
	}


	public Object allFacultys() {
		return facultyRepository.findAll();
	}
}
