package com.asystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.asystem.entities.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer>{

	Optional<Admin> findByName(String name);

}
