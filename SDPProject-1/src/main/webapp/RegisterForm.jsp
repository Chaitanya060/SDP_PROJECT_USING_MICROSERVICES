<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
<link type="text/css" rel="stylesheet" href="css/register.css">
<link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body class="backgroundH">
<%@include file="navbarlogin.jsp" %>
	<section class="">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12">
        <div class="card card-registration card-registration-2" style="border-radius: 15px; background-color:rgba(161, 196, 253,0.5); color:white;">
          <div class="card-body p-0">
            <div class="row g-0">
              <div class="col-lg-6">
             	<c:if test="${not empty alertnow}">
             		<div class="alert alert-success alert-dismissible fade show" role="alert"" role="alert">
  					 <p><c:out value="${alertnow}"></c:out></p>
  					 <button type="button" class="btn-close btn-closee" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
             	</c:if>
             	
             	<c:if test="${not empty alerterror}">
             		<div class="alert alert-danger alert-dismissible fade show" role="alert"" role="alert">
  					 <p><c:out value="${alerterror}"></c:out></p>
  					 <button type="button" class="btn-close btn-closee" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
             	</c:if>
             	
             
                <div class="p-5">
                <form method="post" action="${pageContext.request.contextPath}/delivery/registernow">
                  <h3 class="fw-normal mb-5" >General Infomation</h3>

                  <div class="row">
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="text" id="form3Examplev2" name="fullname" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev2" >Full Name</label>
                      </div>

                    </div>
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="text" id="form3Examplev3" name="nickname" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev3" >Nick Name</label>
                      </div>

                    </div>
                  </div>

                   <div class="row">
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="text" id="form3Examplev2" name="userid" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev2">User Id</label>
                      </div>

                    </div>
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="text" id="form3Examplev3"name="language" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev3" >Language</label>
                      </div>

                    </div>
                  </div>

				<div class="row">
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="password" id="form3Examplev2" name="password" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev2" >Password</label>
                      </div>

                    </div>
                    <div class="col-md-6 mb-4 pb-2">

                      <div class="form-outline">
                        <input type="password" id="form3Examplev3" name="repeatpassword" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev3" >Repeat Password</label>
                      </div>

                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-6 mb-4 pb-2 mb-md-0 pb-md-0">

                      <div class="mb-4 pb-2">
                      
                       <div class="form-outline">
                        <input type="text" id="form3Examplev3" name="address" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplev3" >Address</label>
                      </div>
                      
                    <div class="form-outline form-white">
                      <textarea type="text" id="form3Examplea3" name="additionalinfo" class="form-control form-control-lg" required> </textarea>
                      <label class="form-label" for="form3Examplea3" >Additional Information</label>
                    </div>
                  </div>

                    </div>
                  </div>

                </div>
              </div>
              <div class="col-lg-6 backgroundY text-white">
                <div class="p-5">
                  <h3 class="fw-normal mb-5">Contact Details</h3>

                  <div class="mb-4 pb-2">
                    <div class="form-outline form-white">
                      <input type="text" id="form3Examplea2" name="street" class="form-control form-control-lg" required/>
                      <label class="form-label" for="form3Examplea2" >Street + Nr</label>
                    </div>
                  </div>

                 

                  <div class="row">
                    <div class="col-md-5 mb-4 pb-2">

                      <div class="form-outline form-white">
                        <input type="text" id="form3Examplea4" name="zipcode" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplea4" >Zip Code</label>
                      </div>

                    </div>
                    <div class="col-md-7 mb-4 pb-2">

                      <div class="form-outline form-white">
                        <input type="text" id="form3Examplea5" name="city" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplea5" >City</label>
                      </div>

                    </div>
                  </div>

                  <div class="mb-4 pb-2">
                    <div class="form-outline form-white">
                      <input type="text" id="form3Examplea6" name="country" class="form-control form-control-lg" required/>
                      <label class="form-label" for="form3Examplea6" >Country</label>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-5 mb-4 pb-2">

                      <div class="form-outline form-white">
                        <input type="text" id="form3Examplea7" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplea7">Code +</label>
                      </div>

                    </div>
                    <div class="col-md-7 mb-4 pb-2">

                      <div class="form-outline form-white">
                        <input type="text" id="form3Examplea8" name="phonenumber" class="form-control form-control-lg" required/>
                        <label class="form-label" for="form3Examplea8" >Phone Number</label>
                      </div>

                    </div>
                  </div>

                  <div class="mb-4">
                    <div class="form-outline form-white">
                      <input type="text" id="form3Examplea9" name="email" class="form-control form-control-lg" required/>
                      <label class="form-label" for="form3Examplea9" >Your Email</label>
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-start mb-4 pb-3">
                    <input class="form-check-input me-3" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label text-white" for="form2Example3">
                      I do accept the <a href="#!" class="text-white"><u>Terms and Conditions</u></a> of Food Express
                    </label>
                  </div>

                  <button type="submit" class=" glow-on-hover"
                    data-mdb-ripple-color="dark" style="background-color:white !important;">Register</button>
                    
                    <a href="${pageContext.request.contextPath}/delivery/register"><button type="button" class=" glow-on-hover mx-4"
                    data-mdb-ripple-color="dark" style="background-color:white !important; ">Back To Login</button>
					</a>
					</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>