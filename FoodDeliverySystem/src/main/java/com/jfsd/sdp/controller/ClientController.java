package com.jfsd.sdp.controller;


import java.util.List;

import org.bouncycastle.math.raw.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jfsd.sdp.model.Client;
import com.jfsd.sdp.model.ClientOrderMapping;
import com.jfsd.sdp.model.Items;
//import com.jfsd.sdp.model.Order;
import com.jfsd.sdp.model.Restaurants;
import com.jfsd.sdp.service.APIService;
import com.jfsd.sdp.service.ClientService;
import com.jfsd.sdp.service.EmailService;
import com.jfsd.sdp.service.ItemsService;
import com.jfsd.sdp.service.OrderService;
//import com.jfsd.sdp.service.OrderService;
import com.jfsd.sdp.service.RestaurantsService;

import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@Autowired
	private ClientService clientService;
	
	@Autowired
	private ItemsService itemsService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private RestaurantsService restaurantsService;
	
	@Autowired
	private APIService apiService;
	 @Autowired
	 private EmailService emailService;
	
	@GetMapping("/")
	@ResponseBody
	public ModelAndView demo()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	
	@GetMapping("login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
	@GetMapping("regprompt")
	public ModelAndView regprompt()
	{
		ModelAndView mv=new ModelAndView("regprompt");
		return mv;
	}
	@GetMapping("userreg")
	public ModelAndView clientRegistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userSignup");
		return mv;
	}
	@GetMapping("deliveryreg")
	public ModelAndView deliveryBoyRegistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deliverySignup");
		return mv;
	}
	
	@PostMapping("addclient")
	public ModelAndView addClient(HttpServletRequest request,RedirectAttributes redirectAttributes)
	{
		ModelAndView mv=new ModelAndView();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String dob = request.getParameter("dob");
		String location=request.getParameter("location");
		String password=request.getParameter("pwd1");
		Client c=new Client();
		c.setFname(fname);
		c.setLname(lname);
		c.setEmail(email);
		c.setMobile(mobile);
		c.setLocation(location);
		c.setPassword(password);
		c.setDob(dob);
		c.setGender(gender);
		try {
			
			String ack=clientService.addClient(c);
			mv.setViewName("redirect:login");
			redirectAttributes.addFlashAttribute("ack", ack);
		}
		catch(Exception e)
		{
			mv.setViewName("redirect:userreg");
			redirectAttributes.addFlashAttribute("ack", "User Alredy Exists");
		}
//		mv.setViewName("redirect:login");
//		redirectAttributes.addFlashAttribute("ack", ack);
		return mv;
		
	}
	@PostMapping("/checkclientlogin")
	public ModelAndView checkClientLogin(HttpServletRequest request,RedirectAttributes redirectAttributes)
	{
		String email=request.getParameter("email");
		String pswd=request.getParameter("pwd");
		Client c= clientService.checkClientLogin(email, pswd);
		ModelAndView mv=new ModelAndView();
		if(email.equals("klu143@gmail.com") && pswd.equals("klu"))
		{
			mv.setViewName("redirect:adminhome");
			return mv;
		}
		if(c!=null)
		{
			mv.setViewName("redirect:home");
			//mv.addObject("ack","Login Success !");
			//redirectAttributes.addFlashAttribute("ack", "Login Success !");
			HttpSession session =request.getSession();
			session.setAttribute("clientId",c.getId());
			session.setAttribute("ack", "Login Success !!");
			return mv;
		}
		mv.setViewName("redirect:login");
		//mv.addObject("ack","Login Failed !");
		redirectAttributes.addFlashAttribute("ack", "Login Failed !");
		return mv;
	}
	@GetMapping("home")// change later
	public ModelAndView clientHome(HttpServletRequest request)
	{
		HttpSession session =request.getSession();
		ModelAndView mv=new ModelAndView();
		if(session.getAttribute("clientId")!=null)
		{
			//ModelAndView mv=new ModelAndView();
			mv.setViewName("home");
			List<Items> items=itemsService.viewAllItems();
			mv.addObject("items", items);
			return mv;
		}
		mv.setViewName("redirect:/login");
		return mv;
		
	}
	@GetMapping("userprofile")
	public ModelAndView clientProfile(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("Profile");
	    HttpSession session=request.getSession();
	    int id=(int)session.getAttribute("clientId");
	    Client client=clientService.viewClientById(id);
	    mv.addObject("client",client);
	    return mv;
	}
	
//	@GetMapping("placeorder/{id}")
//	public ModelAndView addOrder(@PathVariable("id") int id,HttpServletRequest request)
//	{
//		ModelAndView mv=new ModelAndView();
//		System.out.println(id);
//		Items i=itemsService.viewItemById(id);
//		//System.out.println(i);
//		Order o=new Order();
//		HttpSession session =request.getSession();
//		Client c=(Client)session.getAttribute("client");
//		int clientId=c.getId();
//		o.setItemid(id);
//		o.setCid(clientId);
//		o.setItemname(i.getName());
//		o.setStatus(true);
//		o.setPrice(i.getPrice());
//		orderService.addOrder(o);
//		mv.setViewName("redirect:/home");
//		return mv;
//	}
	
	@GetMapping("vieworders/{id}")
	public ModelAndView viewOrders(@PathVariable("id") int id)
	{
		List<ClientOrderMapping> lst=orderService.getClientOrdersById(id);
		ModelAndView mv=new ModelAndView("vieworders");
		mv.addObject("ordlist", lst);
		return mv;
	}
	
	@PostMapping("placeorder/{id}")
	@ResponseBody
	public String placeOrder(@PathVariable("id") int id,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		
		int cid=(int)session.getAttribute("clientId");
		System.out.println("client Id"+cid);
		Items i=itemsService.viewItemById(id);
		//System.out.println("Item "+i);
		long n=orderService.checkOrderMapping(i, clientService.viewClientById(cid));
		if(n>0) {
			System.out.println("Already Ordered !!!");
		}
		else {
			ClientOrderMapping obj=new ClientOrderMapping();
			obj.setClient(clientService.viewClientById(cid));
			System.out.println("client "+clientService.viewClientById(cid));
			obj.setItem(i);
			obj.setPrice(i.getPrice());
			obj.setQuantity(1);
			obj.setName(i.getName());
			obj.setRestaurantName("");
			orderService.placeClientsOrder(obj);
		}
		return "added";
	}
	
	@PostMapping("updatedetails")
	public ModelAndView updateProfile(HttpServletRequest request)
	{
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String pswd=request.getParameter("pswd");
		String mobile=request.getParameter("mobile");
		String loc=request.getParameter("location");
		Client c=new Client();
		HttpSession session=request.getSession();
		Client sessionClient=(Client)session.getAttribute("client");
		c.setId(sessionClient.getId());
		c.setFname(fname);
		c.setLname(lname);
		c.setEmail(email);
		c.setPassword(pswd);
		c.setLocation(loc);
		c.setMobile(mobile);
		System.out.println(c);
		clientService.updateClient(c);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("redirect:/login");
		return mv;
	}
	@GetMapping("/adminhome")
	public ModelAndView adminHome()
	{
		ModelAndView mv=new ModelAndView("admin");
		long restCount=restaurantsService.count();
//		long ordCount=orderService.count();
		mv.addObject("restcount",restCount);
		long deliveryBoyCount=apiService.viewDeliveyBoyCount();
		System.out.println(deliveryBoyCount);
		long ordersCount=apiService.viewOrdersCount();
		mv.addObject("deliveryboycount", deliveryBoyCount);
		mv.addObject("orderscount", ordersCount);
		//mv.addObject("ordcount",ordCount);
		return mv;
	}
	@GetMapping("/viewdelivery")
	public ModelAndView adminDelivery()
	{
		ModelAndView mv=new ModelAndView("delivery");
		List<Object> dlist=apiService.viewAllDeliveryBoys();
		mv.addObject("dlist", dlist);
		return mv;
	}
	@GetMapping("restaurants")
	public ModelAndView restaurants()
	{
		List<Restaurants> rlist=restaurantsService.viewAllRestaurants();
		ModelAndView mv=new ModelAndView("restaurants");
		mv.addObject("rlist", rlist);
		return mv;
	}
	@PostMapping("addrestaurant")
	public ModelAndView addRestaurant(HttpServletRequest request)
	{
		String name=request.getParameter("name");
		String location =request.getParameter("location");
		String contact=request.getParameter("contact");
		String gst=request.getParameter("gst");
		Restaurants r=new Restaurants();
		r.setName(name);
		r.setGst(gst);
		r.setLocation(location);
		r.setContact(contact);
		restaurantsService.addRestaurant(r);
		ModelAndView mv=new ModelAndView("redirect:/restaurants");
		return mv;
	}
	
	@DeleteMapping("remove/{oid}")
	@ResponseBody
	public String removeOrder(@PathVariable("oid") int id)
	{
		orderService.deleteOrder(id);
		ModelAndView mv=new ModelAndView();
		return "Removed !!!";
		
	}
	
	@GetMapping("/forgotpassword")
	public String forgotPrompt()
	{
		return "forgotprompt";
	}
	
	@PostMapping("/authfrotp")
	public ModelAndView authForOtp(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("validateotp");
		String email=request.getParameter("email");
		Client c=clientService.validateClientsExistance(email);
		if(c!=null)
		{
		//	mv.addObject("email", email);
			emailService.sendEmail(email,"Demo mail","Hi we are testing");
			mv.setViewName("redirect:/sendotp");
			return mv;
		}
		mv.setViewName("redirect:/login");
		return mv;
	}
	
	@GetMapping("/sendotp")
	public ModelAndView sendOtp()
	{
		ModelAndView mv=new ModelAndView("otpform");
		return mv;
	}
	
	@GetMapping("aboutus")
	public String aboutUs()
	{
		return "aboutus";
	}
	
	
	
}
