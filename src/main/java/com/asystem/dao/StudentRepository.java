package com.asystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.asystem.entities.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{

	Optional<Student> findByName(String name);
}
