<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-in Form</title>
    <!-- Add Bootstrap CSS link -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    label{
        color: white;
    }
</style>
<body>
    <div style="background-image: url('./images/restaurant-interior.jpg'); height: 100vh;background-size: cover;">
    <div class="container-xxl">
        <div class="row" style="min-height: 100vh;">
            <div class="col-12 d-flex flex-column justify-content-center align-items-center">
            <div class="col-md-6" style="background: rgba(255,255,255,0.2);padding: 20px">
                <h2 class="text-center my-4" style="color: white;">Sign In</h2>
                <form class="p-3" action="${pageContext.request.contextPath}/rest/home">
                    <div class="form-group">
                        <label for="inputEmail" style="font-size: 22px;">Email address</label>
                        <input type="email" class="form-control" id="inputEmail" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" style="font-size: 22px;">Password</label>
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Sign In</button>
                </form>
            </div>
        </div>
        </div>
    </div>
    </div>
    <!-- Add Bootstrap JS and jQuery links -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>


