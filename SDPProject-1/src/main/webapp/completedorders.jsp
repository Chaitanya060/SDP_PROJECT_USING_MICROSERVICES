<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.klef.jfsd.project.model.SuccessfullOrders"%>
    <%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Completed Orders</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link type="text/css" rel="stylesheet" href="css/navbar.css">
<link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<% Object successfullist = session.getAttribute("successfullist");
		System.out.println(successfullist);
	%>
	<div class="container-xxl">
	<div class="row mt-5">
		<div class="col-12 d-flex align-items-center justify-content-between">
			<h3 class="fs-1 text-white">Completed Orders</h3>
			<a href="${pageContext.request.contextPath}/delivery/acceptedorders" class="text-decoration-none"><h6 style="cursor:pointer;" class="fs-4 text-warning" > Back</h6></a>
		</div>
	</div>
	<div class="row mt-3">
	<div class="col-12">
		<table class="table" style="border:2px solid white;">
  <thead class="thead-dark text-white">
    <tr>
      <th scope="col">OrderNo</th>
      <th scope="col">OrderBy</th>
      <th scope="col">Items</th>
      <th scope="col">Restraunt</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody class="text-white">
    <c:forEach items="${successfullist}" var="successfullorder">
    	   <tr>
      <th scope="row" >${successfullorder.id }</th>
      <td>${successfullorder.orderby }</td>
      <td>${successfullorder.items}</td>
      <td>${successfullorder.restraunt}</td>
      <td class="position-relative">  
      <button  class="btnn positon-absolute" style="transform: translateX(0px);">
        <svg width="180px" height="60px" viewBox="0 0 180 60" class="border">
          <polyline points="179,1 179,59 1,59 1,1 179,1" class="bg-line" />
          <polyline points="179,1 179,59 1,59 1,1 179,1" class="hl-line" />
        </svg>
        <span>Success</span>
      </button>
  </td>
    </tr>
    </c:forEach>
        
  </tbody>
</table>
	</div>
	</div>

	</div>
</body>
</html>