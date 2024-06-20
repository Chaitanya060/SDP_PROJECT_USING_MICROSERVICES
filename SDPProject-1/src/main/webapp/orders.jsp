<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.klef.jfsd.project.model.AvailableOrders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link type="text/css" rel="stylesheet" href="css/navbar.css">
<link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body class="">
<% List<AvailableOrders> availableorders =(List<AvailableOrders>) session.getAttribute("availableorders");
	System.out.println(availableorders);
%>
	<%@ include file="navbar.jsp" %>
	<div class="tableH container-xxl ">
	<div class="row mt-5">
		<div class="col-12 d-flex align-items-center justify-content-between">
			<h3 class="fs-1 text-white">Available Orders</h3>
			<a href="${pageContext.request.contextPath}/delivery/acceptedorders" class="text-decoration-none"><h6 style="cursor:pointer;" class="fs-4 text-info" >Accepted Orders</h6></a>
		</div>
	</div>
	<div class="row mt-3">
	<div class="col-12">
		<table class="table" style="border:2px solid white;">
  <thead class="thead-dark text-white">
    <tr>
      <th scope="col">OrderNo</th>
      <th scope="col">OrderBy</th>
      <th scope="col">OrderId</th>
      <th scope="col">Items</th>
      <th scope="col">Restraunt</th>
      <th scope="col">Accept Order</th>
      <th scope="col">Deny Order</th>
    </tr>
  </thead>
  <tbody class="text-white">
    <c:forEach items="${availableorders}" var="availableorder" >
    	<tr>
    	  <td scope="col">${availableorder.id}</td>
	      <td scope="col">${availableorder.orderby}</td>
	      <td scope="col">${availableorder.orderid}</td>
	      <td scope="col">${availableorder.items}</td>
	      <td scope="col">${availableorder.restraunt}</td>
		  <td><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal${availableorder.id}">Accept</button></td>
      	  <td><a href="removeorderfromlist/${availableorder.id}"><button class="btn bg-danger">Deny</button></a></td>
    	</tr>
    	<div class="modal fade" id="exampleModal${availableorder.id}" tabindex="-1" aria-labelledby="exampleModalLabel${availableorder.id}" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-white" id="exampleModalLabel ">Take Up This Order</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="row">
       		<div class="col-12 d-flex justify-content-between" >
       			<label class="text-white">OrderId</label>
       			<span class="text-white">${availableorder.orderid}</span>
       		</div>
       		<div class="col-12 d-flex justify-content-between" >
       			<label class="text-white">OrderBy</label>
       			<span class="text-white">${availableorder.orderby}</span>
       		</div>
       		<div class="col-12 d-flex justify-content-between" >
       			<label class="text-white">items</label>
       			<span class="text-white">${availableorder.items}</span>
       		</div>
       		<div class="col-12 d-flex justify-content-between" >
       			<label class="text-white">Restraunt</label>
       			<span class="text-white">${availableorder.restraunt}</span>
       		</div>
       </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a href="${pageContext.request.contextPath}/delivery/addordertoacceptedlist/${availableorder.id}"><button type="button" class="btn btn-primary">Add To Orders</button></a>
      </div>
    </div>
    </div>
  </div>
    </c:forEach>
        
  </tbody>
</table>
	</div>
	
	
</div>
	</div>
</body>	
</html>