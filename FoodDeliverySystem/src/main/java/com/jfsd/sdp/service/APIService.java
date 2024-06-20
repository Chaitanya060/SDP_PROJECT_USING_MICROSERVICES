package com.jfsd.sdp.service;

import java.util.List;

public interface APIService {
		
		public List<Object> viewAllItems();
		
		public long viewDeliveyBoyCount();

	   public long  viewOrdersCount();
	   
	   public List<Object> viewAllDeliveryBoys();
}

