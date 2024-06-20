package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.service.ItemsService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("rest")
public class ClientController 
{
	
	@Autowired
	private ItemsService itemsService;
	
	
	@GetMapping("/")
	
	   public String indexdemo()
	   {
	     return "login";
	   }
	   @GetMapping("/signup")
	   public String signup()
	   {
	     return "signup";
	   }
	   @GetMapping("/home")
	   public String home()
	   {
	     return "home";
	   }
	
  
   @GetMapping("additems")
   public ModelAndView addproductdemo()
   {
	   ModelAndView mv = new ModelAndView("additems");
	   return mv;
   }
   //MultipartFile to get images 
   @PostMapping("insertitem")
   public ModelAndView insertproductdemo(HttpServletRequest request,@RequestParam("productimage") MultipartFile file) throws IOException, SerialException, SQLException
   {
	   String msg = null;
	   
	   ModelAndView mv = new ModelAndView();
	   
	   try
	   {
	   String category = request.getParameter("category");
	   String name = request.getParameter("name");
	   String description = request.getParameter("description");
	   Double price = Double.valueOf(request.getParameter("price"));
	   
	   
		  byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		  
		  Items p = new Items();
		  p.setCategory(category);
		  p.setName(name);
		  p.setDescription(description);
		  p.setPrice(price);
		  
		  p.setProductimage(blob);
		  
		  msg=itemsService.AddProduct(p);
		  System.out.println(msg);
		  mv.setViewName("productmsg");
		  mv.addObject("message",msg);
	   }	  
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		   System.out.println(msg.toString());
		   mv.setViewName("producterror");
		   mv.addObject("message",msg);
	   }
	   return mv;
   }
   @GetMapping("viewallitems")
   public ModelAndView viewallprodsdemo()
   {
	   List<Items> productlist = itemsService.ViewAllProducts();
	   
	   ModelAndView mv = new ModelAndView("viewallitems");
	   
	   mv.addObject("productlist", productlist);
	   
	   return mv;
   }
   
@GetMapping("displayprodimage")
public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
{
  Items items =  itemsService.ViewProductByID(id);
  byte [] imageBytes = null;
  imageBytes = items.getProductimage().getBytes(1,(int) items.getProductimage().length());

  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
}

   @GetMapping("viewproductbyid")
public ModelAndView  viewproductbyiddemo()
{
	   List<Items> productlist=itemsService.ViewAllProducts();
	   ModelAndView mv=new ModelAndView("viewproductbyid");
	   mv.addObject("productlist",productlist);
	   return mv;
}
   
   @PostMapping("displayproduct")
   public ModelAndView displayproductdemo(HttpServletRequest request)
   {
	   int pid=Integer.parseInt(request.getParameter("pid"));
	   Items items=itemsService.ViewProductByID(pid);
	   ModelAndView mv=new ModelAndView("displayproduct");
	   mv.addObject("product",items);
	   return mv;
   }
   @GetMapping("viewproductbycategory")
   public ModelAndView viewProductsByCategory()
   {
	   ModelAndView mv=new ModelAndView("viewproductsbycategory");
	   return mv;
   }
   @PostMapping("displayproductsbycategory")
   public ModelAndView viewProductsByCategory(HttpServletRequest request)
   {
	   String category=request.getParameter("category");
	   List<Items> productlist=itemsService.viewAllProductsByCategory(category);
	   ModelAndView mv=new ModelAndView("displayproductsbycategory");
	   mv.addObject("productlist",productlist);
	   return mv;
   }
  }
