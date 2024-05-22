package com.asystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.asystem.entities.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Integer>{

	Optional<Faculty> findByName(String name);

}
