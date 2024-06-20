<%@page import="org.springframework.web.servlet.mvc.support.RedirectAttributes"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>

	<%@include file="navbar.jsp" %>
    <body>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
            
            <c:if test="${not empty ack}">
            	<script >
            		alert("${ack}");
            	</script>
            </c:if>         
            
            <div class="split-screen">
                <div class="left ">
                </div>
                <div class="right">
                    <form  action="${pageContext.request.contextPath}/client/checkclientlogin" method="post">
                        <section class="copy">
                            <h1>Sign In</h1>
                            <i class="fa-solid fa-lock fa-beat fa-xl my-icon"
                                style="color:#FFD200;margin-bottom: -5px;"></i>
                        </section>
                        <div class="input-container">
                            <input type="text" id="email" name="email" required />
                            <label for="email">Email Id</label>
                        </div>
                        <div class="input-container">
                            <input type="password" id="pwd" name="pwd" required />
                            <label for="pwd">password</label>
                        </div>
                       <button type="submit" value="sign in" class="btn" id="signinbtn">SIGN IN</button>
                        <br />
                        <span style="font-size :17px;">Dont have an account ? <a href="${pageContext.request.contextPath}/client/regprompt" style="color: #FFD200;">Sign up</a>Now
                        </span>
                        <br/>
                        
                    </form>
                </div>
            </div>
    </body>

    </html>