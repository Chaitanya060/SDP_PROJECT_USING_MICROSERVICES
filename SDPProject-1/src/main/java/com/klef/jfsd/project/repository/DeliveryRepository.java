package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.DeliveryBoy;


@Repository
public interface DeliveryRepository extends JpaRepository<DeliveryBoy, Integer>{
	
	@Query("select d from DeliveryBoy d where delId=?1")
	public DeliveryBoy loginvalidate(String uname);
	
	@Query("select d from DeliveryBoy d where delId=?1")
	public DeliveryBoy  updateprofile(String uname);
	
} 
