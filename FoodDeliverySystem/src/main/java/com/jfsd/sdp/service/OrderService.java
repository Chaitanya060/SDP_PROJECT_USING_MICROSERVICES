package com.jfsd.sdp.service;

import java.util.List;

import com.jfsd.sdp.model.Client;
import com.jfsd.sdp.model.ClientOrderMapping;
import com.jfsd.sdp.model.Items;

public interface OrderService {
	
	public void placeClientsOrder(ClientOrderMapping obj);
	public long checkOrderMapping(Items item,Client client);
	public void deleteOrder(int id);
	public List<ClientOrderMapping> getClientOrdersById(int id);
}
