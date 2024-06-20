<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@page import="com.jfsd.sdp.model.Client"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Profile.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha384-c4BFt0kaDIAdM+HA2TYJvTjS5uoNn2st0xkfDTbMsuBCC4j5zT5r5RuIAGXO6jWi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
	
<body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
    <div class="container p-0 mt-3" >
        <div class="left-box">
            <div class="profile-container">
                <div class="profile-image">
                    <img src="./images/chineseboy.jpg"/>
                </div>
                <div class="details">
                    <div class="list">
                        <ul>
                            <li>${client.getFname()}</li>
                            <li>${client.getEmail()}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-box">
            <h3>Your Profile</h3>
            <form action="">
                <div class="d-flex flex-row">
                    <div class="signup-field-container">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="fname" value="${client.getFname()}" required disabled>
                    </div>
                    <div class="signup-field-container">
                        <label for="lname">LAST NAME</label>
                        <input type="text" id="lname" name="lname" value="${client.getLname()}"  required disabled>
                    </div>
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 65%;" >
                        <label for="fname">registered mail</label>
                        <input type="text" id="fname" name="fname" value="${client.getEmail()}" required disabled>
                    </div>
                
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 50%;">
                        <label for="fname">contact number</label>
                        <input type="text" id="fname" name="fname" value="${client.getMobile()}" required disabled>
                    </div>
                
                </div>
                <div class="d-flex flex-row">
                    <div class="signup-field-container" style="width: 50%;">
                        <label for="fname">DOB</label>
                        <input type="date" id="fname" name="fname" value="${client.getDob()}" required disabled>
                    </div>
                
                </div>
                <div class="text-center"><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Update Profile</button></div>
           
                </div>
            </form>
        </div>
    </div>
    
     <div class="modal fade" style="background-color:rgba(0,0,0,0.1);" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" style="color:white" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body mt-0 mb-0" >
				<form method="POST" action="${pageContext.request.contextPath}/client/updatedetails" class="form gap10 d-flex flex-column" style="padding:70px; border-radius:20px; color:black;">
            <h2 class="text-white">Update Profile</h2>
            
        <div class="form-floating">
            <input type="text" placeholder="" name="fname" value="${client.getFname()} " class="form-control" required>
            <label for="">&nbsp;First Name</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="lname" value="${client.getLname()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-flag"></i>&nbsp;Last Name</label>
        </div>
        <div class="form-floating">
            <input type="email" placeholder="" name="email" value="${client.getEmail() }" class="form-control" required>
            <label for=""><i class="fa-solid fa-envelopes-bulk"></i>&nbsp;Email</label>
        </div>
        <div class="form-floating">
            <input type="password" placeholder="" name="pswd" value="${client.getPassword()}" class="form-control" required>
            <label for=""><i class="fa-solid fa-city"></i>&nbsp;Password</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="location" value="${client.getLocation()}" class="form-control" required>
            <label for=""><i class="fa-regular fa-address-card"></i>&nbsp;Location</label>
        </div>
        <div class="form-floating">
            <input type="text" placeholder="" name="mobile" value="${client.getMobile()}" class="form-control" required>
            <label for=""><i class="fa-regular fa-address-card"></i>&nbsp;Phone Number</label>
        </div>
       <button class="btn glow-on-hover mt-4" type="submit">Update</button>
    </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>