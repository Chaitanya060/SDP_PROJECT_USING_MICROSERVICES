package com.jfsd.sdp.service;

import java.util.List;

import com.jfsd.sdp.model.Items;

public interface ItemsService {
	public List<Items> viewAllItems();
	public Items viewItemById(int id);
}
