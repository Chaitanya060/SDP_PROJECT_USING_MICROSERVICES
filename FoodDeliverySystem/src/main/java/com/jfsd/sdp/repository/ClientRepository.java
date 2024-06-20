package com.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jfsd.sdp.model.Client;

public interface ClientRepository extends JpaRepository<Client, Integer>{

	@Query("select c from Client c where c.email=?1 and c.password=?2")
	public Client checkClientLogin(String email,String password);
	
	@Query("select c from Client c where c.email=?1")
	public Client validateExistance(String email);
}
