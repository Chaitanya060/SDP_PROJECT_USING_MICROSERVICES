package com.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.sdp.model.Restaurants;
import com.jfsd.sdp.repository.RestaurantsRepository;

@Service
public class RestaurantServiceImpl implements RestaurantsService {

	@Autowired
	private RestaurantsRepository restaurantsRepository;
	@Override
	public String addRestaurant(Restaurants r) {
		restaurantsRepository.save(r);
		return "Added Successfully";
	}

	@Override
	public List<Restaurants> viewAllRestaurants() {
		return restaurantsRepository.findAll();
	}

	@Override
	public long count() {
		
		return restaurantsRepository.count();
	}

}
