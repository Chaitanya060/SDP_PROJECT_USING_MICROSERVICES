<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/UserSignUp.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
     integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
	<%@include file="navbar.jsp" %>
	
	 <c:if test="${not empty ack}">
            	<script >
            		alert("${ack}");
            	</script>
            </c:if>         
            
    <div class="split-screen">
        <div class="usignup-left " style="width: 40%;">
        </div>
        <div class="uright" style="width: 60%;">
            <form action="${pageContext.request.contextPath}/client/addclient" method="post">
                <section class="copy text-center">
                <h3>Create Your Account</h3>
                </section>
                <div class="d-flex flex-row" >
                    <div class="signup-field-container">
                        <input type="text" id="fname" name="fname" required>
                        <label for="fname">First Name</label>
                    </div>
                    <div class="signup-field-container">
                        <input type="text" id="lname" name="lname" required>
                        <label for="lname">Last Name</label>
                    </div>
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" >
                        <input type="text" id="email" name="email" required>
                        <label for="email">Email id</label>
                    </div>
                    <div class="signup-field-container">
                        <input type="text" id="location"  name="location" required>
                        <label for="location"> Location </label>
                    </div>
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 65%;">
                        <input type="text" id="mobile"  name="mobile" required>
                        <label for="mobile">mobile number</label>
                    </div>
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container">
                        <span>Gender</span>
                    </div>
                    <div class="signup-field-container">
                        <span>DOB</span>
                    </div>
                </div>
               
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 25%; margin-bottom:1.25rem;">
                    <label>
                        <input type="radio" name="gender" value="male">
                        Male
                    </label>
                    </div>
                    <div class="signup-field-container" style="width: 25%; margin-bottom:1.25rem;">
                        <label>
                            <input type="radio" name="gender" value="female">
                            Female
                        </label>
                    </div>
                    <div class="signup-field-container" style="margin-top: 10px;">
                        <input type="date" name="dob" id="dob">
                    </div>
                </div>
               
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 85%;">
                        <input type="password" id="password1" name="pwd1" required>
                        <label for="password1">Password</label>
                    </div>
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 85%;">
                        <input type="password" id="password2" name="pwd2" required>
                        <label for="password2">Confirm Password</label>
                    </div>
                </div>
                 

                <div class="d-flex flex-row justify-content-center">
                    <button type="submit" value="Sign Up" class="btn" id="signupbtn">SIGN UP</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>