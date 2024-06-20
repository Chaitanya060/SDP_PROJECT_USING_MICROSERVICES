package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.AcceptedOrders;
import com.klef.jfsd.project.repository.AcceptedOrdersRepository;

@Service
public class AcceptedOrdersServiceImpl implements AcceptedOrdersService{
	
	@Autowired
	private AcceptedOrdersRepository acceptedOrdersRepository;

	public List<AcceptedOrders> acceptedorders()
	{
		List<AcceptedOrders> acceptlist = acceptedOrdersRepository.findAll();
		return acceptlist;
	}

	public void addorderbydeluser(AcceptedOrders ao) 
	{
		System.out.println(ao);
		acceptedOrdersRepository.save(ao);
	}

	public void deleteorderbyorderid(String orderid) {
		acceptedOrdersRepository.deleteorderbasedorderid(orderid);
	}

}
