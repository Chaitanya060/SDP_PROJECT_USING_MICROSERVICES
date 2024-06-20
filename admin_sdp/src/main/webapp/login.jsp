<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"> <!-- Link to the CSS file -->
</head>
<body>
    <div class="container">
        <div class="form">
            <div class="form_front">
                <h1 class="form_details">Log in</h1>
                <form>
                    <input type="text" class="input" placeholder="Username">
                    <input type="password" class="input" placeholder="Password">
                    <button class="btn"><a href="${pageContext.request.contextPath}/client/regprompt" style="color: #fff;">Login</a></button>
                </form>
                
            </div>
            
        </div>
       
    </div>
</body>
</html>
