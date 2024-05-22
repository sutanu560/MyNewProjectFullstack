package com.asystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.asystem.entities.BusRoute;

public interface BusRepository extends JpaRepository<BusRoute, Integer>{

	Optional<BusRoute> findByBusno(String busno);

}
