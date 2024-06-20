<%@page import="com.klef.jfsd.project.model.AcceptedOrders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accepted Orders</title>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<% 
	
	%>
	<div class="tableH container-xxl">
		<div class="row mt-5">
			<div class="col-12 d-flex align-items-center justify-content-between">
				<h3 class="fs-1 text-white">Accepted Orders</h3>
				<a href="${pageContext.request.contextPath}/delivery/completedorders" class="text-decoration-none">
					<h6 style="cursor:pointer;" class="fs-4 text-success">Completed Orders</h6>
				</a>
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
				      <th scope="col">Cancel Order</th>
				       <th scope="col"> Order Status</th>
				    </tr>
				  </thead>
				  <tbody class="text-white ">
				    <c:forEach items="${acceptlist}" var="order">
				    	<tr>
				    	   <td scope="col">${order.id}</td>
					      <td scope="col">${order.orderby}</td>
					      <td scope="col">${order.items}</td>
					      <td scope="col">${order.restraunt}</td>
				    	  <td><a href="${pageContext.request.contextPath}/delivery/cancelorder/${order.orderid}"><button class="btn bg-danger">Cancel</button></a></td>
				    	  <td><a href="${pageContext.request.contextPath}/delivery/ordersuccessfull/${order.orderid}"><button class="btn bg-warning">Ordered?</button></a></td>	
				    	</tr>
				    </c:forEach>
				     
				  </tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
