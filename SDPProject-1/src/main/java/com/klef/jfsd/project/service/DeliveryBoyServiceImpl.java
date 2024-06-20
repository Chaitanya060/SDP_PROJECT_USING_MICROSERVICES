package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.DeliveryBoy;
import com.klef.jfsd.project.repository.DeliveryRepository;

@Service
public class DeliveryBoyServiceImpl implements DeliveryBoyService{
	
	@Autowired
	private DeliveryRepository deliveryboyservice;

	public String addUser(DeliveryBoy e)
	{
		System.out.println("dasfdsa here");
		System.out.println(e);
		deliveryboyservice.save(e);
		return "User Registered Successfully";
	}

	public DeliveryBoy loginvalidate(String uname) {
		DeliveryBoy db = deliveryboyservice.loginvalidate(uname);
		return db;
	}

	public String updateprofile(DeliveryBoy c) {
		DeliveryBoy e = deliveryboyservice.updateprofile(c.getDelId());
		e.setDelAddress(c.getDelAddress());
		e.setDelCity(c.getDelCity());
		e.setDelemail(c.getDelemail());
		e.setDelfullname(c.getDelfullname());
		e.setDelnickname(c.getDelnickname());
		e.setDelpassword(c.getDelpassword());
		e.setDelstreet(c.getDelstreet());
		e.setDellanguage(c.getDellanguage());
		e.setDelphone(c.getDelphone());
		e.setDelCountry(c.getDelCountry());
		e.setDelzipCode(c.getDelzipCode());
		deliveryboyservice.save(e);
		return "Updated Successfully";
	}

	@Override
	public long deliveryBoyCount() {
		return deliveryboyservice.count();
	}

	@Override
	public List<DeliveryBoy> viewAllDeliveryBoys() {
		return deliveryboyservice.findAll();
	}

	

	
}
