package com.jfsd.sdp.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class APIServiceImpl implements APIService {
	
	@Autowired
	private RestTemplate restTemplate;

	@Override
	public List<Object> viewAllItems() {
		String apiURL="http://localhost:9696/viewallitems";
		Object[] data=restTemplate.getForObject(apiURL, Object[].class);
	    return Arrays.asList(data);
	}

	@Override
	public long viewDeliveyBoyCount() {
		String apiURL="http://localhost:2222/delivery/deliveryboycount";
	long data=restTemplate.getForObject(apiURL, Long.class);
	    return data;
	}
	
	@Override
	public long viewOrdersCount() {
		String apiURL="http://localhost:2222/delivery/ordercount";
		long data=restTemplate.getForObject(apiURL, Long.class);
	    return data;
	}

	@Override
	public List<Object> viewAllDeliveryBoys() {
	    String apiURL = "http://localhost:2222/delivery/viewalldeliveryboys";
	    Object[] data=restTemplate.getForObject(apiURL, Object[].class);
	    System.out.println(data);
	    return Arrays.asList(data);
	}


}
