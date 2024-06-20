package com.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.sdp.model.Items;
import com.jfsd.sdp.repository.ItemsRepository;

@Service
public class ItemServiceImpl implements ItemsService {

	@Autowired
	private ItemsRepository itemsRepository;
	
	@Override
	public List<Items> viewAllItems() {
		return itemsRepository.findAll();
	}

	@Override
	public Items viewItemById(int id) {
		Optional<Items> obj=itemsRepository.findById(id);
		if(obj.isPresent())
		{
			Items i=obj.get();
			return i;
		}
		return null;
	}

}
