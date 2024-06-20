<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivry Boy </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link type="text/css" rel="stylesheet" href="css/home.css">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body class="backgroundH">
<%@ include file="navbarlogin.jsp" %>
    <div class="container-xxl" >
    <div class="row">
    <div class="col-6 wrapnow">
        <form method="post" action="${pageContext.request.contextPath}/delivery/loginvalidate" class="form" style="background-color:rgba(0,0,0,0.3);padding:70px; border-radius:20px;transform: translate(350px, 100px);">
            <c:if test="${not empty userstatus}">
    	<div class="alert alert-danger alert-dismissible fade show" role="alert"" role="alert">
  					 <p><c:out value="${userstatus}"></c:out></p>
  					 <button type="button" class="btn-close btn-closee" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
    </c:if>
            <h2 class="text-white">Food Express<i class="fa-solid fa-bowl-food mx-3"></i></h2>
            <div class="form-floating my-4">
                <input type="text" placeholder="" name="uname" value="" class="form-control" required>
                <label for="" class="form-label"><i class="fa-solid fa-user"></i>&nbsp;UserId</label>
        </div>
        <div class="form-floating">
            <input type="password" placeholder="" name="pwd" value="" class="form-control" required>
            <label for=""><i class="fa-solid fa-lock form-label"></i>&nbsp;Password</label>
        </div>
       <button class="btn glow-on-hover mt-4" type="submit">Login></button>
        <div class="tags mt-4">
        <div class="row">
         <div class="col-12 d-flex align-items-center justify-content-between">
            <a href="" class="text-decoration-none text-danger">Forgot Password?</a>
             <a href="${pageContext.request.contextPath}/delivery/register" class="text-decoration-none text-info">New User?</a>
             </div>
             </div>
        </div>
        
    </form>
    </div>
    </div>
    </div>
</body>
</html>