package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.AvailableOrders;

@Repository
public interface AvailableOrdersRepository extends JpaRepository<AvailableOrders, Integer>
{
	
}
