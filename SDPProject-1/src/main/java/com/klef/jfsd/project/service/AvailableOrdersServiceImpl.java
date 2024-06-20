package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.AvailableOrders;
import com.klef.jfsd.project.repository.AvailableOrdersRepository;

@Service
public class AvailableOrdersServiceImpl implements AvailableOrdersService
{
	@Autowired
	private AvailableOrdersRepository availableOrdersRepository;
	
	public List<AvailableOrders> orderslist()
	{
		List<AvailableOrders> lst = availableOrdersRepository.findAll();
		return lst;
	}

	public void deleteorder(int orderid) 
	{
		availableOrdersRepository.deleteById(orderid);
	}

	public void addorder(AvailableOrders ao) 
	{
		availableOrdersRepository.save(ao);
	}

	@Override
	public long availableOrders() {
	  long data =availableOrdersRepository.count();
	  return data;
	}
	
}
