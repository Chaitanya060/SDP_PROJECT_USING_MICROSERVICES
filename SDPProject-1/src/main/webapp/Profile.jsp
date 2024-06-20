<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link type="text/css" rel="stylesheet" href="css/navbar.css">
<link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="ms-4">
		<div class="row">
		 <div class="col-2  p-4 " style="margin: 0px; max-height:90vh;background-color:rgba(255, 165, 0,0.1);border-radius:20px; ">
		 	<section class="text-white" >
		 		<ul style="list-style: none;  cursor:pointer;" class="d-flex gap fs-4 fw-bold flex-column"  >
		 			<a href="${pageContext.request.contextPath}/delivery/profile" class="text-decoration-none text-white"><li >My DashBoard</li></a>
		 			<a href="${pageContext.request.contextPath}/delivery/orders" class="text-decoration-none text-white"><li >Orders</li></a>
		 			<a href="${pageContext.request.contextPath}/delivery/restraunts" class="text-decoration-none text-white"><li >Restraunts</li></a>
		 			<a href="${pageContext.request.contextPath}/delivery/reviews" class="text-decoration-none text-white"><li >Reviews</li></a>
		 			<a href="${pageContext.request.contextPath}/delivery/details" class="text-decoration-none text-white"><li>My Profile</li></a>
		 		</ul>
		 	</section>
		 </div>
		 <div class="col-10 text-white" style="overflow-y:scroll; max-height:90vh;">
		 <div class="row">
			<div class='d-flex justify-content-between align-items-center' >
	      <div class='d-flex flex-column flex-grow-1 me-3  roudend-3 p-3' style="margin: 0px;background-color:rgba(255, 165, 0,0.1);border-radius:20px;">
	          <div class='d-flex justify-content-between '>
	            <p>Total Orders</p>
	           <h4> 121</h4>
	          </div> 
	          <div class='d-flex mt-3 justify-content-between'>
	            <h6 class='red'> </h6>
	            <p>Compared To July 2023</p>
	          </div>
	      </div>
	      <div class='d-flex flex-column flex-grow-1 me-3  roudend-3 p-3' style="margin: 0px;background-color:rgba(255, 165, 0,0.1);border-radius:20px;">
	          <div class='d-flex justify-content-between'>
	            <p>Total Reviews</p>
	           <h4>5000</h4>
	          </div> 
	          <div class='d-flex mt-3 justify-content-between'>
	            <h6 class='red'> 4.3 Star Rating</h6>
	            <p>Compared To July 2023</p>
	          </div>
	      </div>
	      <div class='d-flex flex-column flex-grow-1  roudend-3 p-3' style="margin: 0px;background-color:rgba(255, 165, 0,0.1);border-radius:20px;">
	          <div class='d-flex justify-content-between'>
	            <p>Current Rank</p>
	           <h4>100</h4>
	          </div> 
	          <div class='d-flex mt-3 justify-content-between'>
	            <h6 class='red'>45%<i class="fa-solid ms-1 fa-arrow-up-right-dots"></i></h6>
	            <p>Compared To July 2023</p>
	          </div>
	      </div>
	    </div>
	    </div>
	    <div class="row mt-4">
	    	<div class="col-12">
	    		<h3 class="text-white fs-3">Rated Restraunts</h3>
	    	</div>
	    </div>
	    <div class="row mt-4" style="overflow: hidden;">
	    	<div class="marquee">
	  <div class="marquee-content"> 
	    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white  text">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item ">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
   	 </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
  </div>
</div>
	    </div>
	    <div class="row mt-4">
	    	<div class="col-12">
	    		<h3 class="text-white fs-3">Happy Customers</h3>
	    	</div>
	    </div>
	    <div class="row mt-4" style="overflow: hidden;">
	    	<div class="marquee">
	  <div class="marquee-content"> 
	    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white  text">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item ">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
   	 </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
  </div>
</div>
	    </div>
	    <div class="row mt-4">
	    	<div class="col-12">
	    		<h3 class="text-white fs-3">Top Rated Delivery Members</h3>
	    	</div>
	    </div>
	    <div class="row mt-4" style="overflow: hidden;">
	    	<div class="marquee">
	  <div class="marquee-content"> 
	    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white  text">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item ">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
	      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg	" alt="">
	      <p class="text-white">Aditya Restraunt's</p>
	    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3498%2Ftrend20220418100510.jpg" alt="">
    	<p class="text-white  text">Karthik Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://curlytales.com/wp-content/uploads/2022/06/Untitled-design-2022-06-17T165423.498.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://res.cloudinary.com/simplotel/image/upload/x_285,y_526,w_3744,h_2112,r_0,c_crop,q_80,fl_progressive/w_750,f_auto,c_fit/dolphin-hotel/Cascades_1" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/28/01/1d/c2/summerfields.jpg" alt="">
    	<p class="text-white  text">Aditya Restraunt's</p>
    </div>
    
    <div class="marquee-item">
      <img src="https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F2070%2Ftrend20181026073039.jpg" alt="">
   			<p class="text-white  text">Aditya Restraunt's</p>
   	 </div>
    
    <div class="marquee-item">
      <img src="https://im.hunt.in/cg/visakhapatnam/City-Guide/toprestaurants3.jpg" alt="">
   		<p class="text-white  text">Aditya Restraunt's</p>
    </div>
  </div>
</div>
	    </div>
			 </div>
			</div>
		</div>
</body>
</html>