<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="css/adminstyle.css">
	<script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha384-c4BFt0kaDIAdM+HA2TYJvTjS5uoNn2st0xkfDTbMsuBCC4j5zT5r5RuIAGXO6jWi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<title>AdminHub</title>
</head>
<body>

<style>
	.form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ddd;
    }

    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #45a049;
    }
    .my-icon:hover {
	cursor: pointer;
}

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #f5f5f5;
    }

</style>
	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="/" class="brand">
			
			<span class="text">AdminPannel</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="${pageContext.request.contextPath}/client/adminhome">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/client/restaurants">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">Restaurants</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Delivery Boy</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Customer</span>
				</a>
			</li>
			
		</ul>
		<ul class="side-menu">
			
			<li>
				<a href="${pageContext.request.contextPath}/client/login" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link"></a>
			<form action="#">
				
			</form>
			

		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
				</div>
				
			</div>

			<ul class="box-info">
				<li style="width:45%">
					<i class='bx bxs-plus-square my-icon' data-bs-toggle="modal" data-bs-target="#exampleModal"></i>
					<span class="text">
						<h3>New Order</h3>
					</span>
				</li>
			</ul>


			
    <table style="width: 100%;">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Location</th>
            <th>GST</th>
        </tr>
        <!-- Add your table rows here -->
        <c:forEach items="${rlist}" var="i">
        
        	<tr>
            <th>${i.getId()}</th>
            <th>${i.getName()}</th>
            <th>${i.getContact()}</th>
            <th>${i.getLocation()}</th>
            <th>${i.getGst()}</th>
        </tr>
        </c:forEach>
        
    </table>
				
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Add a Restaurant</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <form method="post" action="/addrestaurant">
         e
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location">
        </div>
        <div class="form-group">
            <label for="gst">GST Bill Number:</label>
            <input type="text" id="gst" name="gst">
        </div>
        <div class="form-group">
            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact">
        </div>
        <button type="submit">Submit</button>
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

	<script src="./css/script.js"></script>
</body>
</html>