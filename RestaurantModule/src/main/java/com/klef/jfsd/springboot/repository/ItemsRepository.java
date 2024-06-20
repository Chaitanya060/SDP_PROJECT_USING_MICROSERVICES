package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Items;

@Repository
public interface ItemsRepository extends CrudRepository<Items, Integer>
{
	@Query("from Items p where p.category=?1")
	public List<Items> viewAllProductsByCategory(String category);
}
