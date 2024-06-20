package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.project.model.AcceptedOrders;
import com.klef.jfsd.project.model.AvailableOrders;
import com.klef.jfsd.project.model.DeliveryBoy;
import com.klef.jfsd.project.model.SuccessfullOrders;
import com.klef.jfsd.project.service.AcceptedOrdersService;
import com.klef.jfsd.project.service.AvailableOrdersService;
import com.klef.jfsd.project.service.DeliveryBoyService;
import com.klef.jfsd.project.service.SuccessfullOrdersService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller
@RequestMapping("delivery")
public class ControllerD {
	
	@Autowired
	private DeliveryBoyService deliveryBoyService;
	
	@Autowired
	private AvailableOrdersService availableOrdersService;
	
	@Autowired
	private AcceptedOrdersService acceptedOrdersService;
	
	@Autowired
	private SuccessfullOrdersService successfullOrdersService;
	
	@GetMapping("/")
	
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	@GetMapping("orders")
	public ModelAndView orders(HttpServletRequest request)
	{
		List<AvailableOrders> lst = availableOrdersService.orderslist();
		HttpSession session = request.getSession();
		
		session.setAttribute("availableorders", lst);
		
		ModelAndView mv = new ModelAndView("orders");
		return mv;
	}
	@GetMapping("acceptedorders")
	public ModelAndView acceptedorders(HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		
		List<AcceptedOrders> acceptedlist = acceptedOrdersService.acceptedorders();
		session.setAttribute("acceptlist", acceptedlist);
		ModelAndView mv = new ModelAndView("acceptedorders");
		
		return mv;
	}
	@GetMapping("completedorders")
	public ModelAndView completedorders(HttpServletRequest request)
	{
		List<SuccessfullOrders> successfullist = successfullOrdersService.succssfullorderslist();
		HttpSession session = request.getSession();
		session.setAttribute("successfullist", successfullist);
		ModelAndView mv = new ModelAndView("completedorders");
		return mv;
	}
	@GetMapping("home")
	public ModelAndView home(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("home");
		HttpSession session=request.getSession();
		DeliveryBoy obj=(DeliveryBoy)session.getAttribute("deliveryobjdeliveryobj");
		System.out.println(obj.toString());
		return mv;
	}
	@GetMapping("profile")
	public ModelAndView profile()
	{
		ModelAndView mv = new ModelAndView("Profile");
		return mv;
	}
	@GetMapping("details")
	public ModelAndView details()
	{
		ModelAndView mv = new ModelAndView("details");
		return mv;
	}
	@GetMapping("restraunts")
	public ModelAndView restraunts()
	{
		ModelAndView mv = new ModelAndView("restraunts");
		return mv;
	}
	@GetMapping("register")
	public ModelAndView register()
	{
		ModelAndView mv = new ModelAndView("RegisterForm");
		return mv;
	}
	
	@GetMapping("error")
	public ModelAndView error()
	{
		ModelAndView mv = new ModelAndView("error");
		return mv;
	}
	
	@PostMapping("registernow")
	public ModelAndView registernow(HttpServletRequest request,RedirectAttributes attributes)
	{
		String mssg = null;
		ModelAndView mv = new ModelAndView();		
		
		try {
			String fullname = request.getParameter("fullname");
			String nickname = request.getParameter("nickname");
			String userid  = request.getParameter("userid");
			String language = request.getParameter("language");
			String password = request.getParameter("password");
			String repeatpassword = request.getParameter("repeatpassword");
			String additionalinfo = request.getParameter("additionalinfo");
			String street = request.getParameter("street");
			String city = request.getParameter("city");	
			String country = request.getParameter("country");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("address");
			String phonenumber = request.getParameter("phonenumber");
			String email = request.getParameter("email");
			
			if(!password.equals(repeatpassword))
			{
				mv.setViewName("redirect:/register");
				attributes.addFlashAttribute("alerterror","Passwords Are Not Same");
				return mv;
			}
			
			DeliveryBoy db = new DeliveryBoy();
			db.setDelAddress(address);
			db.setDelCity(city);
			db.setDelCountry(country);
			db.setDelemail(email);
			db.setDelfullname(fullname);
			db.setDelId(userid);
			db.setDelnickname(nickname);
			db.setDelstreet(street);
			db.setDellanguage(language);
			db.setDelzipCode(zipcode);
			db.setDelpassword(password);
			db.setDelphone(phonenumber);
			mssg = deliveryBoyService.addUser(db);
			
			mv.setViewName("redirect:/register");
			attributes.addFlashAttribute("alertnow",mssg);
			 return mv;
			
		} catch (Exception e) {
			
			mssg = e.getMessage();
			mv.setViewName("home");
			System.out.println("Not Registerd");	
		}
		return mv;
	}

	@PostMapping("loginvalidate")
	public ModelAndView loginvalidate(HttpServletRequest request,RedirectAttributes attributes)
	{
		String mssg = null;
		ModelAndView mv = new ModelAndView("/home");
		try {
			String userid = request.getParameter("uname");
			String password = request.getParameter("pwd");
			System.out.println(userid);
			System.out.println(password);
			DeliveryBoy d =  deliveryBoyService.loginvalidate(userid);
			
			if(d==null) 
			{
				mssg = "User Not Found";
				mv.setViewName("redirect:/");
				attributes.addFlashAttribute("userstatus",mssg);
				return mv;
			}
			
			if(d!=null)
			{
				if(!d.getDelpassword().equals(password)) {
					mssg = "Passwords Are Not Matched";
				mv.setViewName("redirect:/");
				attributes.addFlashAttribute("userstatus",mssg);
				return mv;
				}
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("deliveryobj", d);
			mv.setViewName("redirect:/home");		
			
		} catch (Exception e) {
			mssg = e.getMessage();
		}
		return mv;
	}
	
	
	@PostMapping("updatedetails")
	public ModelAndView updatedetails(HttpServletRequest request, RedirectAttributes attributes)
	{
		String mssg = null;
		ModelAndView mv = new ModelAndView();		
		
		try {
			String fullname = request.getParameter("fullname");
			String nickname = request.getParameter("nickname");
			String userid  = request.getParameter("userid");
			String language = request.getParameter("language");
			String password = request.getParameter("password");
			String repeatpassword = request.getParameter("repeatpassword");
			String additionalinfo = request.getParameter("additionalinfo");
			String street = request.getParameter("street");
			String city = request.getParameter("city");	
			String country = request.getParameter("country");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("address");
			String phonenumber = request.getParameter("phonenumber");
			String email = request.getParameter("email");
			
			
			DeliveryBoy db = new DeliveryBoy();
			db.setDelAddress(address);
			db.setDelCity(city);
			db.setDelCountry(country);
			db.setDelemail(email);
			db.setDelfullname(fullname);
			db.setDelId(userid);
			db.setDelnickname(nickname);
			db.setDelstreet(street);
			db.setDellanguage(language);
			db.setDelzipCode(zipcode);
			db.setDelpassword(password);
			db.setDelphone(phonenumber);
			mssg = deliveryBoyService.updateprofile(db);
			
			
				
			mv.setViewName("redirect:/home");
			attributes.addFlashAttribute("alertnow",mssg);
			
			 return mv;
			
		} catch (Exception e) {
			
			mssg = e.getMessage();
			mv.setViewName("home");
			System.out.println("Not Registerd");	
		}
		return mv;
	
	}
	
	@GetMapping("logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		HttpSession  session=request.getSession();	
		session.removeAttribute("deliveryobj");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@GetMapping("removeorderfromlist/{id}")
	public  ModelAndView removeorderfromlist(HttpServletRequest request,@PathVariable("id") int orderid)
	{
		System.out.println(orderid);
		ModelAndView mv = new ModelAndView();
		
		availableOrdersService.deleteorder(orderid);

//		mv.setViewName("redirect:/delivery/acceptedorders");

		return mv;

	}
	
	@GetMapping("addordertoacceptedlist/{id}")
	public ModelAndView addordertoacceptedlist(@PathVariable("id") int eid)
	{
		ModelAndView mv = new ModelAndView();
		
		AcceptedOrders ac = new AcceptedOrders();
		
		List<AvailableOrders> avl = availableOrdersService.orderslist();
		
		for(AvailableOrders order:avl)
		{
			if(order.getId() == eid)
			{
				ac.setItems(order.getItems());
				ac.setOrderid(order.getOrderid());
				ac.setOrderby(order.getOrderby());
				ac.setRestraunt(order.getRestraunt());
				ac.setOrderAcceptanceUserId(order.getOrderAcceptanceUserId());
				acceptedOrdersService.addorderbydeluser(ac);
			}
		}
		
		availableOrdersService.deleteorder(eid);
		
		mv.setViewName("redirect:/delivery/acceptedorders");
		
		return mv;
	}
	
	@GetMapping("map")
	public ModelAndView map()
	{
		ModelAndView mv = new ModelAndView("map");
		return mv;
	}
	
	@GetMapping("cancelorder/{id}")
	public ModelAndView cancelOrder(HttpServletRequest request,@PathVariable("id") String orderid)
	{
		ModelAndView mv = new ModelAndView();
		
		AvailableOrders ao = new AvailableOrders();
		
		List<AcceptedOrders> ac = acceptedOrdersService.acceptedorders();
		
		
		for(AcceptedOrders s:ac)
		{
			if(s.getOrderid().equals(orderid))
			{
				System.out.println(s.getItems());
				ao.setItems(s.getItems());
				ao.setOrderid(s.getOrderid());
				ao.setOrderby(s.getOrderby());
				ao.setRestraunt(s.getRestraunt());
				ao.setOrderAcceptanceUserId(s.getOrderAcceptanceUserId());
			}
		}
		
		System.out.println(ao);
		
		availableOrdersService.addorder(ao);
		
		acceptedOrdersService.deleteorderbyorderid(orderid);
		
		mv.setViewName("redirect:/orders");
		
		return mv;
	}
	
	@GetMapping("ordersuccessfull/{orderid}")
	public ModelAndView ordersuccessfull(@PathVariable("orderid") String orderid)
	{
		ModelAndView mv = new ModelAndView();
		
		SuccessfullOrders sfo = new SuccessfullOrders();
		
		List<AcceptedOrders> aco = acceptedOrdersService.acceptedorders();
		
		for(AcceptedOrders ac:aco)
		{
			if(ac.getOrderid().equals(orderid))
			{
				sfo.setItems(ac.getItems());
				sfo.setOrderAcceptanceUserId(ac.getOrderAcceptanceUserId());
				sfo.setOrderby(ac.getOrderby());
				sfo.setRestraunt(ac.getRestraunt());
			}
		}
		successfullOrdersService.addsuccessorder(sfo);
		acceptedOrdersService.deleteorderbyorderid(orderid);
		mv.setViewName("redirect:/completedorders");
		return mv;
	}
	@GetMapping("/deliveryboycount")
	public ResponseEntity<Long>  deliveryBoyCount()
	{
		long c=deliveryBoyService.deliveryBoyCount();
		return ResponseEntity.ok(c);
	}
	
	@GetMapping("/ordercount")
	public ResponseEntity<Long>  orderCount()
	{
		long c=availableOrdersService.availableOrders();
		System.out.println("Count is :"+c);
		return ResponseEntity.ok(c);
	}
	
	@GetMapping("/viewalldeliveryboys")
	public ResponseEntity<List<DeliveryBoy>> viewAllDeliveryBoys() {
	    List<DeliveryBoy> deliveryBoys = deliveryBoyService.viewAllDeliveryBoys();
	    System.out.println("Number of Delivery Boys: " + deliveryBoys.size());
	    return ResponseEntity.ok(deliveryBoys);
	}
	
}
