package com.klef.jfsd.project.service;

import java.util.List;


import com.klef.jfsd.project.model.SuccessfullOrders;


public interface SuccessfullOrdersService {
	
	public List<SuccessfullOrders> succssfullorderslist();
	public void addsuccessorder(SuccessfullOrders s);
}
