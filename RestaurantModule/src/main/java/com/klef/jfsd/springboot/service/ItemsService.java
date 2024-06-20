package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Items;

public interface ItemsService 
{
   public String AddProduct(Items items);
   public List<Items> ViewAllProducts();
   public Items ViewProductByID(int productid);
   public void DeleteProductByID(int productid);
   List<Items> viewAllProductsByCategory(String category);
}
