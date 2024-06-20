<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/myorders.css"> 
    <title>Document</title>
</head>
<body>
    <script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/e1b6c77699.js" crossorigin="anonymous"></script>
	<%@include file="navbar.jsp" %>
	<%
		String arr[]={"./images/burger.jpg","./images/italiandelight.jpg","./images/noodles.jpg","./images/choco-shake.jpg"};
	%>
    <div class="my-container">
        <div class="top-section">
            <div class="image-cont" style="border: 1px; text-align: center; background-color: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);">
                <!-- <img src="./images/top-view-delicious-noodles-concept.jpg" alt=""> -->
               <!--   <input type="search" placeholder="enter an item to search" style="width:45%;height:100%"> -->
            </div>
        </div>
        <div class="bottom-section">
            <h2 style="text-align: center;" class="section-head">Popular Foods</h2>
            <div class="popular-food-content">
            <%int idx=0; %>
        	<c:forEach items="${items}" var="item" varStatus="loop">
        	 <c:if test="${loop.index lt 4}">
                <div class="my-card">
                    <div class="card-img">
                    
                        <img src="<%= arr[idx] %>" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info p-1">
                        <h3>${item.name}</h3>
<!--                          <div class="star-rating" style="margin-top:1rem;margin-bottom: 1rem;">
                            <input type="radio" id="5-stars-card1" checked="checked" name="rating" value="5" />
                            <label for="5-stars-card1" class="star">&#9733;</label>
                            <input type="radio" id="4-stars-card1" name="rating" value="4" />
                            <label for="4-stars-card1" class="star">&#9733;</label>
                            <input type="radio" id="3-stars-card1" name="rating" value="3" />
                            <label for="3-stars-card1" class="star">&#9733;</label>
                            <input type="radio" id="2-stars-card1" name="rating" value="2" />
                            <label for="2-stars-card1" class="star">&#9733;</label>
                            <input type="radio" id="1-star-card1" name="rating" value="1" />
                            <label for="1-star-card1" class="star">&#9733;</label>
                        </div> -->
                        <h6><span style="color: red;">Rs ${item.price}</span></h6>
                        <button  onclick="placeOrder(<%= idx+1%>)">Order Now</button>
                		<%idx++; %>
                    </div>
                </div>
                </c:if>
                </c:forEach>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

				<script>
				    function placeOrder(id) {
				        $.ajax({
				            type: "POST",
				            url: "${pageContext.request.contextPath}/client/placeorder/" + id,
				            success: function(data) {
				                alert("Order placed successfully!");
				                // Optionally, you can update the page with the response data
				            },
				            error: function() {
				                alert("Error placing the order.");
				            }
				        });
				    }
				</script>
				
 <!--             <div class="my-card">
                    <div class="card-img">
                        <img src="./images/noodles.jpg" alt="" style="width: 100%;">
                    </div>
                  <div class="card-info">
                        <h3>Noodles</h3>
                        <h3>Rating : <span>4.5/5</span></h3>
                        <div class="star-rating" style="margin-top:1rem;margin-bottom: 1rem;">
                            <input type="radio" id="5-stars-card2"  name="rating" value="5" />
                            <label for="5-stars-card2" class="star">&#9733;</label>
                            <input type="radio" id="4-stars-card2" name="rating" value="4" />
                            <label for="4-stars-card2" class="star">&#9733;</label>
                            <input type="radio" id="3-stars-card2" name="rating" value="3" />
                            <label for="3-stars-card2" class="star">&#9733;</label>
                            <input type="radio" id="2-stars-card2" name="rating" value="2" />
                            <label for="2-stars-card2" class="star">&#9733;</label>
                            <input type="radio" id="1-star-card2" name="rating" value="1" />
                            <label for="1-stars-card2" class="star">&#9733;</label>
                        </div>
                        <button>Order Now</button>
                    </div>
                </div>
                <div class="my-card">
                    <div class="card-img">
                        <img src="./images/burger.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info">
                        <h3>Burger</h3>
                        <div class="star-rating" style="margin-top:1rem;margin-bottom: 1rem;">
                            <input type="radio" id="5-stars" checked="checked" name="rating" value="5" />
                            <label for="5-stars" class="star">&#9733;</label>
                            <input type="radio" id="4-stars" name="rating" value="4" />
                            <label for="4-stars" class="star">&#9733;</label>
                            <input type="radio" id="3-stars" name="rating" value="3" />
                            <label for="3-stars" class="star">&#9733;</label>
                            <input type="radio" id="2-stars" name="rating" value="2" />
                            <label for="2-stars" class="star">&#9733;</label>
                            <input type="radio" id="1-star" name="rating" value="1" />
                            <label for="1-star" class="star">&#9733;</label>
                        </div>
                        <button>Order Now</button>
                    </div>
                </div>
                 <div class="my-card">
                    <div class="card-img">
                       <img src="./images/pizza.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info">
                        <h3>Pizza</h3>
                        <div class="star-rating" style="margin-top:1rem;margin-bottom: 1rem;">
                            <input type="radio" id="5-stars" checked="checked" name="rating" value="5" />
                            <label for="5-stars" class="star">&#9733;</label>
                            <input type="radio" id="4-stars" name="rating" value="4" />
                            <label for="4-stars" class="star">&#9733;</label>
                            <input type="radio" id="3-stars" name="rating" value="3" />
                            <label for="3-stars" class="star">&#9733;</label>
                            <input type="radio" id="2-stars" name="rating" value="2" />
                            <label for="2-stars" class="star">&#9733;</label>
                            <input type="radio" id="1-star" name="rating" value="1" />
                            <label for="1-star" class="star">&#9733;</label>
                        </div>
                        <button>Order Now</button>
                    </div>
                </div>-->
            </div>
            <h2 style="text-align: center;" class="section-head">Popular Sections</h2>
            <div class="popular-restaruants">
                <div class="my-card">
                    <div class="card-img">
                        <!-- <p> cupiditate laudantium natus! Incidunt dolores fugit temporibus architecto similique. Inventore adipisci cupiditate facere nulla impedit nostrum reprehenderit!</p> -->
                       <img src="./images/29660004_5800_8_01.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info" style="text-align: center;">
                        <h3>Quick Eats</h3>
                        <button>Explore More</button>
                    </div>
                </div>
                <div class="my-card">
                    <div class="card-img">
                        <img src="./images/chineseboy.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info">
                    <div class="card-info" style="text-align: center;">
                        <h3>Chinese</h3>
                        <button>Explore More</button>
                    </div>
                    </div>
                </div>
                <div class="my-card">
                    <div class="card-img">
                       <img src="./images/icecreams.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info" style="text-align: center;">
                        <h3>Ice Creams</h3>
                        <button>Explore More</button>
                    </div>
                </div>
                <div class="my-card">
                    <div class="card-img">
                        <img src="./images/32273155_6400_5_09 (1).jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="card-info" style="text-align: center;">
                        <h3>Smoothies</h3>
                        <button>Explore More</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="footer.jsp" %>
</body>
</html>