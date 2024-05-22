package com.asystem.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asystem.dao.AdminRepository;
import com.asystem.entities.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	
	public Admin validate(String name , String password) {
		Optional<Admin> admin = adminRepository.findByName(name);
	
		if(admin.isPresent())
		{	
			if(admin.get().getPassword().equals(password))
			{
				System.out.println(admin.get().toString());
				return admin.get();			}
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
}
