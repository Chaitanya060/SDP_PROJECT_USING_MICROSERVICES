<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <link rel="script" href="script.js">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/footer.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
  	<%@include file="navbar.jsp" %>
<body>
    
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script> AOS.init();</script>
    <!--body-->
    <div class="my-container">
      
      <div class="left-box">
        <div class="text-content">
          <h2>Hungry ?</h2>
          <p>Satisfy your cravings in style with Foodie Express, the ultimate food delivery app designed to bring the world of
            flavors to your fingertips. Discover a mouthwatering array of dishes from your favorite local eateries and beyond,
            all
            conveniently available within a single app.</p>
          <div>
          <a href="${pageContext.request.contextPath}/client/login"><button class="button">Explore More !</button></a>
        </div>
      </div>
      
      </div>
    </div>
    <div class="container">
      <div class="row flex-lg-row-reverse align-items-center g-5 py-5" data-aos="fade-left" data-aos-duration="1500">
        <div class="col-10 col-sm-8 col-lg-6" >
          <img src="./images/chinese.jpg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700"
            height="500" loading="lazy" style="border-radius: 15px">
        </div>
        <div class="col-lg-6">
          <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">Delve into Chinese Gastronomy</h1>
          <p class="lead">Indulge in the alluring world of Chinese cuisine, where every bite is a journey through a symphony of bold flavors and exotic spices. 
          From savory stir-fries that sizzle with wok expertise to succulent, 
          tender dumplings that promise an explosion of taste,
           Chinese food beckons with an irresistible fusion of tradition and innovation.</p>
          <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <!--    <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Primary</button>
            <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button>
          </div> -->
        </div>
      </div>
      <div class="row flex-lg-row-reverse align-items-center g-5 py-5" data-aos="fade-left" data-aos-duration="1500">
          <div class="col-10 col-sm-8 col-lg-6">
            <img src="./images/italian.png" class="d-block mx-lg-auto img-fluid"
              alt="Bootstrap Themes" width="700" height="500" loading="lazy" style="border-radius: 15px">
          </div>
          <div class="col-lg-6">
            <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">Italian Epicurean Symphony</h1>
            <p class="lead">Embark on a tantalizing journey into the heart of Italy with its world-renowned cuisine. Italian food is a celebration of simplicity and vibrant flavors,
             where fresh ingredients and time-honored recipes come together to create culinary perfection.</p>
            <div class="d-grid gap-2 d-md-flex justify-content-md-start">
            <!--   <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Primary</button>
              <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button>
              --> 
            </div>
          </div>
        </div>
        <div class="row flex-lg-row-reverse align-items-center g-5 py-5" data-aos="fade-left" data-aos-duration="1500">
          <div class="col-10 col-sm-8 col-lg-6">
            <img src="./images/italian.png" class="d-block mx-lg-auto img-fluid"
              alt="Bootstrap Themes" width="700" height="500" loading="lazy" style="border-radius: 15px">
          </div>
          <div class="col-lg-6">
            <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">Italian Epicurean Symphony</h1>
            <p class="lead">Embark on a tantalizing journey into the heart of Italy with its world-renowned cuisine. Italian food is a celebration of simplicity and vibrant flavors,
             where fresh ingredients and time-honored recipes come together to create culinary perfection.</p>
            <div class="d-grid gap-2 d-md-flex justify-content-md-start">
            <!--   <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Primary</button>
              <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button>
              --> 
            </div>
          </div>
        </div>
    </div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
<%@include file="footer.jsp" %>
</html>
    