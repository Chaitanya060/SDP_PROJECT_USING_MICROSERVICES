package com.jfsd.sdp.service;

import java.util.List;

import com.jfsd.sdp.model.Restaurants;

public interface RestaurantsService {

	public String addRestaurant(Restaurants r);
	
	public List<Restaurants> viewAllRestaurants();
	
	public long count();
}
