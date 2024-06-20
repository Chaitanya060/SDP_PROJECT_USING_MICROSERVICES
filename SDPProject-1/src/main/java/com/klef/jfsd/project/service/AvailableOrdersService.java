package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.AvailableOrders;

public interface AvailableOrdersService 
{
	public List<AvailableOrders> orderslist();
	public void deleteorder(int orderid);
	public void addorder(AvailableOrders ao);
	public long availableOrders();
}
