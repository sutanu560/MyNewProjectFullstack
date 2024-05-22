package com.asystem.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asystem.dao.BusRepository;
import com.asystem.entities.BusRoute;

@Service
public class BusRouteService {
	
	@Autowired
	private BusRepository busRepository;
	
	
	public BusRoute validateBus(String busno) {
		Optional<BusRoute> busRoute = busRepository.findByBusno(busno);
		if(busRoute.isPresent())
		{	
			if(busRoute.get().getBusno().equals(busno))
			{
				return busRoute.get();
			}
		}
		
		else
		{
			return null;
		}
		return null;
	}
	
	
	public List<BusRoute> allBusRoute() {
		return busRepository.findAll();
	}
}
