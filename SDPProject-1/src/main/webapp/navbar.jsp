<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha384-c4BFt0kaDIAdM+HA2TYJvTjS5uoNn2st0xkfDTbMsuBCC4j5zT5r5RuIAGXO6jWi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link type="text/css" rel="stylesheet" href="css/navbar.css">
    <link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body class="">
<nav class="navbar colorH h-nav-resp">
  <ul class="nav-list v-class-resp">
    <div class="logo"><img src="./images/logo.jpg" alt="logo"></div>
    <div class="nav-list">
      <li><a href="${pageContext.request.contextPath}/delivery/home">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/delivery/orders">Orders</a></li>
      <li><a href="">Contact</a></li>
      <div class="dropdown text-dark">
        <button class="btn  show dropdown-toggle" type="button" id="navbarDropdown"  data-bs-toggle="dropdown" aria-expanded="true" aria-labelledby="navbarDropdown">
          Profile
        </button>
        <ul class="dropdown-menu text-dark" aria-labelledby="navbarDropdown" style="background-color:rgba(0,0,0,0.7);color:white;">
          <li class="mb-0 hoverMe"><a class=" hoverMe" href="${pageContext.request.contextPath}/delivery/profile">Profile</a></li>
          <li class="hoverMe"><a class=" hoverMe" href="${pageContext.request.contextPath}/delivery/">Sign Out</a></li>
        </ul>
      </div>
    </div>
  </ul>
  <div class="rightNav v-class-resp">
  </div>
  <div class="burger">
    <div class="line"></div>
    <div class="line"></div>
    <div class="line"></div>
  </div>
</nav>
<script>
    const burger = document.querySelector('.burger');
    const navbar = document.querySelector('.navbar');
    const rightNav = document.querySelector('.rightNav');
    const navList = document.querySelector('.nav-list');
    const drop1 = document.querySelector('.dropdown-toggle')
    const drop2 = document.querySelector('.dropdown-menu')
    

    burger.addEventListener('click', () => {
        rightNav.classList.toggle('v-class-resp');
        navList.classList.toggle('v-class-resp');
        navbar.classList.toggle('h-nav-resp');
    });
    
    drop1.addEventListener('click',()=>{
    	drop1.classList.toggle('show');
    	drop2.classList.toggle('show');
    })
    
</script>
</body>
</html>
