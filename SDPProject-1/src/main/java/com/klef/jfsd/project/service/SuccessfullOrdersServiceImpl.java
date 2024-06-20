package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.SuccessfullOrders;
import com.klef.jfsd.project.repository.SuccessfullOrdersRepository;

@Service
public class SuccessfullOrdersServiceImpl implements SuccessfullOrdersService{
	
	@Autowired
	public SuccessfullOrdersRepository successfullOrdersRepository;
	
	public List<SuccessfullOrders> succssfullorderslist() 
	{
		List<SuccessfullOrders> successfullorders = successfullOrdersRepository.findAll();
		return successfullorders;
	}

	public void addsuccessorder(SuccessfullOrders s) {
		successfullOrdersRepository.save(s);
	}

}
