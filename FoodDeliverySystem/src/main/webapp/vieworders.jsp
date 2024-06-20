<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/navbar.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/navbar.css">
</head>

<body>
    <%@include file="navbar.jsp" %>
    
    
    <script type="text/javascript">
    
    function removeOrder(id, price) {
    	console.log(id+" "+price)
    	const myUrl="${pageContext.request.contextPath}/client/remove/"+id;
    	console.log(myUrl)
        $.ajax({
            type: "DELETE",
            url: myUrl,
            success: function(data) {
                alert("Item removed successfully!");
                // Update the total value on the page
                let totalValueElement = document.getElementById('totalValue');
                let currentTotal = parseInt(totalValueElement.textContent);
                totalValueElement.textContent = currentTotal - price;
                // Remove the row from the table
                let row = document.getElementById('row-' + id);
                if (row) {
                    row.remove();
                }
            },
            error: function() {
                alert("Error removing the item.");
            }
        });
    }
    </script>
   

    <table class="table table-striped mt-3">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Price(1X)</th>
                <th scope="col">quantity</th>
                <th scope="col">name</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${ordlist}" var="item">
                <tr id="row-${item.id}">
                    <td>${item.id}</td>
                    <td>${item.price}</td>
                    <td>${item.quantity}</td>
                    <td>${item.name}</td>
                    <td><button class="btn btn-danger" onclick="removeOrder(${item.id}, ${item.price})">Remove  <i class="fa-solid fa-trash"></i> </button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

	 <div id="grandTotal" style="display:flex;flex-direction:column;text-align: center; margin-top: 20px;" class="p-2 m-3">
       <h5> Grand Total: <span id="totalValue">0</span></h5>
        <div class="mt-1">
        	<button class="btn btn-success" id="paymentbtn">Pay Now</button>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let grandTotal = 0;
            	
            const totalValue = document.getElementById('totalValue');

            document.querySelectorAll('td:nth-child(2)').forEach((el) => {
                grandTotal += parseInt(el.textContent);
            });
            totalValue.textContent = grandTotal;
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
