package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.SuccessfullOrders;

@Repository
public interface SuccessfullOrdersRepository extends JpaRepository<SuccessfullOrders, Integer>{

}
