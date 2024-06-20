package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.AcceptedOrders;

public interface AcceptedOrdersService {
	
	public List<AcceptedOrders> acceptedorders();
	public void addorderbydeluser(AcceptedOrders ao);
	public void deleteorderbyorderid(String orderid);
}
