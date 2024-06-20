<%@page import="com.jfsd.sdp.model.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/navbar.css">
    
    <title>Document</title>
</head>
<body>
    <script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
    <%Object obj=session.getAttribute("clientId");
    int cid=0;
    if(obj!=null)
    	cid=(int)obj;
    %>
    <div class="navbar-wrapper">
        <div class="navbar-left">
            <div class="name">Food <span>Express</span></div>
        </div>
        <div class="navbar-right">
            <div class="navbar-list">
                <ul style="list-style: none;">
                    <li><a href="${pageContext.request.contextPath}/client/home">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/client/vieworders/<%= cid %>">View Orders</a></li>
                    <li><a href="${pageContext.request.contextPath}/client/aboutus">About Us</a></li>
                </ul>
                
            </div>
            <div class="icon-cont"><a href="${pageContext.request.contextPath}/client/userprofile"><i class="fa-solid fa-user fa-xl" id="user-icon" style="color: orange;"></i></a></div>
            
        </div>
    </div>
</body>
</html>