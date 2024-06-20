package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.repository.ItemsRepository;

@Service
public class ItemsServiceImpl implements ItemsService
{
	@Autowired
	private ItemsRepository itemsRepository;

	@Override
	public String AddProduct(Items items) 
	{
		itemsRepository.save(items);
		return "Product Added Successfully";
	}

	@Override
	public List<Items> ViewAllProducts() 
	{
		return (List<Items>) itemsRepository.findAll();
	}

	@Override
	public Items ViewProductByID(int productid) 
	{
		return itemsRepository.findById(productid).get();
	}

	@Override
	public void DeleteProductByID(int productid) 
	{
		itemsRepository.deleteById(productid);
		
	}

	@Override
	public List<Items> viewAllProductsByCategory(String category) {
		return itemsRepository.viewAllProductsByCategory(category);
	}

}
