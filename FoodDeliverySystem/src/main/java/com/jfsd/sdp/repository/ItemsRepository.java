package com.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jfsd.sdp.model.Items;


public interface ItemsRepository extends JpaRepository<Items,Integer>{

}
