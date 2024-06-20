<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.klef.jfsd.project.model.DeliveryBoy"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" referrerpolicy="no-referrer" />
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <% DeliveryBoy b =(DeliveryBoy) session.getAttribute("deliveryobj"); 
    System.out.println(b);
    %>
    <div class="ms-4">
        <div class="row">
            <div class="col-2 p-4" style="margin: 0px; max-height: 90vh; background-color: rgba(255, 165, 0,0.1); border-radius: 20px;">
                <section class="text-white">
                    <ul style="list-style: none; cursor: pointer;" class="d-flex gap fs-4 fw-bold flex-column">
                        <a href="${pageContext.request.contextPath}/delivery/profile" class="text-decoration-none text-white"><li>My DashBoard</li></a>
                        <a href="${pageContext.request.contextPath}/delivery/orders" class="text-decoration-none text-white"><li>Orders</li></a>
                        <a href="${pageContext.request.contextPath}/delivery/restraunts" class="text-decoration-none text-white"><li>Restraunts</li></a>
                        <a href="${pageContext.request.contextPath}/delivery/reviews" class a="text-decoration-none text-white"><li>Reviews</li></a>
                        <a href="${pageContext.request.contextPath}/delivery/details" class="text-decoration-none text-white"><li>My Profile</li></a>
                    </ul>
                </section>
            </div>
            
            <c:if test="${not empty alertnow }">
            	div class="alert alert-danger alert-dismissible fade show" role="alert"" role="alert">
  					 <p><c:out value="${alertnow}"></c:out></p>
  					 <button type="button" class="btn-close btn-closee" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
            </c:if>
            
            <div class="col-10 text-white" style="overflow-y: scroll; max-height: 90vh;">
                <div class="row">
                    <div class="col-12">
                        <div class="profile-img w-100 h-25">
                            <img src="./images/gradient.avif" class="img-fluid" style="min-width: 100%; height: 100px; opacity: 0.5;" />
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: -30px; z-index: 3;">
                    <div class="col-12 d-flex flex-column align-items-center justify-content-center">
                        <div class="position-relative">
                            <img src="./images/logo.jpg" class="img-fluid" height="100" width="200" style="border-radius: 50%" />
                            <p class="text-center fs-4 mb-0">${deliveryobj.getDelId()}</p>
                            <p class="text-center fs-4">${deliveryobj.getDelnickname()}</p>
                            <div class="position-absolute bg-dark p-2" style="border-radius: 50%; right: 10px; top: 0px">
                                <button type="button" class=" " data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <i class="fa fa-pencil" aria-hidden="true"></i>  
								</button>
                            </div>
                        </div>
                    </div>
                </div>
 <div class="modal fade" style="background-color:rgba(0,0,0,0.1);" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" style="color:white" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" >
				<form method="POST" action="${pageContext.request.contextPath}/delivery/updatedetails" class="form gap10 d-flex flex-column" style="padding:70px; border-radius:20px; color:black;">
            <h2 class="text-white">Update Profile</h2>
            <div class="form-floating ">
                <input type="text" placeholder="" name="userid" value="${deliveryobj.getDelId()}" class="form-control" required>
                <label for="" class="form-label"><i class="fa-solid fa-user"></i>&nbsp;User_Id</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="fullname" value="${deliveryobj.getDelfullname() }" class="form-control" required>
            <label for="">&nbsp;Full Name</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="nickname" value="${deliveryobj.getDelnickname() }" class="form-control" required>
            <label for="">&nbsp;Nick Name</label>
        </div>
        <div class="form-floating">
            <input type="email" placeholder="" name="email" value="${deliveryobj.getDelemail() }" class="form-control" required>
            <label for=""><i class="fa-solid fa-envelopes-bulk"></i>&nbsp;Email</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="language" value="${deliveryobj.getDellanguage()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-language"></i>&nbsp;Language</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="country" value="${deliveryobj.getDelCountry()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-flag"></i>&nbsp;Country</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="street" value="${deliveryobj.getDelstreet()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-thermometer"></i>&nbsp;Street</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="city" value="${deliveryobj.getDelCity()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-city"></i>&nbsp;City</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="address" value="${deliveryobj.getDelAddress()}" class="form-control" required>
            <label for=""><i class="fa-regular fa-address-card"></i>&nbsp;Address</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="phonenumber" value="${deliveryobj.getDelphone()}" class="form-control" required>
            <label for=""><i class="fa-regular fa-address-card"></i>&nbsp;Phone Number</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="password" value="${deliveryobj.getDelpassword()}" class="form-control" required>
            <label for=""><i class="fa-regular fa-address-card"></i>&nbsp;Password</label>
        </div>
      <button class="btn glow-on-hover mt-4" type="submit">Update</button>>
    </form>
      </div>
    </div>
  </div>
</div>

                <div class="row">
                    <div class="col-6">
                        <h3 class="text-warning">Basic Information</h3>
                        <div class="ms-4 fs-4" style="margin: 0px; max-height: 90vh; padding: 20px; background-color: rgba(255, 165, 0,0.1); border-radius: 20px;">
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Full Name</label>
                                <span>${deliveryobj.getDelfullname() }</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Email </label>
                                <span>${deliveryobj.getDelemail() }</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">User Id</label>
                                <span>${deliveryobj.getDelId()}</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Language</label>
                                <span>${deliveryobj.getDellanguage()}</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <h3 class="text-warning">Additional Information</h3>
                        <div class="ms-4 fs-4" style="margin: 0px; max-height: 90vh; padding: 20px; background-color: rgba(255, 165, 0,0.1); border-radius: 20px;">
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Gender</label>
                                <span>Male</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Contact</label>
                                <span>${deliveryobj.getDelphone()}</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Country</label>
                                <span>${deliveryobj.getDelCountry() }</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Street</label>
                                <span>${deliveryobj.getDelstreet()}</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">City</label>
                                <span>${deliveryobj.getDelCity()}</span>
                            </div>
                            <div class="my-3 d-flex justify-content-between">
                                <label class="mx-4">Address</label>
                                <span>${deliveryobj.getDelAddress()}</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <h3 class="text-warning">Reports</h3>
                        <div class="scrolldown">
                            <div class="ms-4 fs-4" style="margin: 0px; max-height: 90vh; overflow-y: scroll; padding: 20px; background-color: rgba(255, 165, 0,0.1); border-radius: 20px;">
                                <div class="customerReviews">
                                    <div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
		 					<div>
		 					<span class="fs-6 text-info">Review By karthikch_33</span>
		 					<p class="fs-6 ms-4" style="font-size:10px;">If it were at the center of our Solar System, its surface would lie beyond the asteroid belt and it would engulf the orbits of Mercury, Venus, Earth, and Mars</p>
		 					</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
