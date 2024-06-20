package com.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.sdp.model.Client;
import com.jfsd.sdp.repository.ClientRepository;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientRepository clientRepository;
	
	@Override
	public Client viewClientById(int id) {
		return clientRepository.findById(id).get();
	}

	@Override
	public List<Client> viewAllClients() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String addClient(Client c) {
		clientRepository.save(c);
		return "User Registered Successfully";
	}

	@Override
	public String updateClient(Client c) {
		Optional<Client> obj = clientRepository.findById(c.getId()); 
		
	    if(obj.isPresent())
	    {
	        Client updateObj = obj.get();
	        System.out.println(updateObj.getMobile());
	      	updateObj.setFname(c.getFname());
			updateObj.setLname(c.getLname());
			updateObj.setEmail(c.getEmail());
			updateObj.setPassword(c.getPassword());
			updateObj.setMobile(c.getMobile());
			updateObj.setLocation(c.getLocation());
			clientRepository.save(updateObj);
			return "Success !";
	    }
	    return "Failed !";
	}

	@Override
	public Client checkClientLogin(String email, String password) {
		return clientRepository.checkClientLogin(email, password);
	}

	@Override
	public Client validateClientsExistance(String email) {
		return clientRepository.validateExistance(email);
	}

}
