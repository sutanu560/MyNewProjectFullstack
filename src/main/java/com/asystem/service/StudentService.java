package com.asystem.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asystem.dao.StudentRepository;
import com.asystem.entities.Student;

@Service
public class StudentService {
	
	@Autowired
	private StudentRepository studentRepository;
	
	
	public Student validate(String name , String password) {
		Optional<Student> student = studentRepository.findByName(name);
	
		if(student.isPresent())
		{	
			if(student.get().getPassword().equals(password))
			{
				
				return student.get();			}
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


	public long countStudents() {
		return studentRepository.count();
	}


	public List<Student> allStudents() {
		return studentRepository.findAll();
	}
	

}
