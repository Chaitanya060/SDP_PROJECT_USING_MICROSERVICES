package com.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.sdp.model.Client;
import com.jfsd.sdp.model.ClientOrderMapping;
import com.jfsd.sdp.model.Items;
import com.jfsd.sdp.repository.ClientOrderMappingRepository;

import jakarta.transaction.Transactional;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private ClientOrderMappingRepository clientOrderMappingRepository;
	
	@Override
	public long checkOrderMapping(Items item, Client client) {
		return clientOrderMappingRepository.checkForOrderMapping(item, client);
	}

	@Override
	public List<ClientOrderMapping> getClientOrdersById(int id) {
		return  (List<ClientOrderMapping>)clientOrderMappingRepository.getClientOrdersById(id);
	}

	@Override
	public void placeClientsOrder(ClientOrderMapping obj) {
		clientOrderMappingRepository.save(obj);
		
	}

	
//	@Override
//	  public void deleteOrder(int id) {
//	    Optional<ClientOrderMapping> obj=clientOrderMappingRepository.findById(id);
//	    ClientOrderMapping o=null;
//	    if(obj.isPresent())
//	    {
//	      o=obj.get();
//	    }
//	    clientOrderMappingRepository.delete(o);
//	  }

	@Override
	@Transactional
	public void deleteOrder(int mappingId) {
	    Optional<ClientOrderMapping> mapping = clientOrderMappingRepository.findById(mappingId);
	    if (mapping.isPresent()) {
	        ClientOrderMapping clientOrderMapping = mapping.get();
	        clientOrderMapping.setClient(null); // Remove the association with the client
	        clientOrderMapping.setItem(null);
	        clientOrderMappingRepository.save(clientOrderMapping); // Update the mapping
	        clientOrderMappingRepository.delete(clientOrderMapping); // Delete the mapping
	    }
	}
}
