package com.jfsd.sdp.service;

import java.util.List;

import com.jfsd.sdp.model.Client;

public interface ClientService {
	public Client viewClientById(int id);
	public List<Client> viewAllClients();
	public String addClient(Client c);
	public String updateClient(Client c);
	public Client checkClientLogin(String email,String password);
	public Client validateClientsExistance(String email);
}
