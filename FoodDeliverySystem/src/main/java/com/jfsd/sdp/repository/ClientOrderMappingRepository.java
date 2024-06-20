package com.jfsd.sdp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.jfsd.sdp.model.Client;
import com.jfsd.sdp.model.ClientOrderMapping;
import com.jfsd.sdp.model.Items;

public interface ClientOrderMappingRepository extends CrudRepository<ClientOrderMapping, Integer>{

	@Query("select obj from ClientOrderMapping obj where obj.client.id=?1")
	public List<ClientOrderMapping> getClientOrdersById(int id);
	
	@Query("SELECT COUNT(obj) FROM ClientOrderMapping obj where obj.item = ?1 and obj.client = ?2")
	  public long checkForOrderMapping(Items item,Client client);
	
	
//	@Query("delete from ClientOrderMapping where obj.item.id=?1")
//	public int cancleOrder(int id);
}
