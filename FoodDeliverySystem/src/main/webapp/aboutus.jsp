<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        
     <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<div>
<%@include file="navbar.jsp" %>s
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script> AOS.init();</script>
    <main>    
        <!-- Marketing messaging and featurettes
      ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->
    
        <div class="container marketing">
    
            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4" data-aos="fade-bottom" data-aos-duration="1500">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
                         <image href="./images/aditya.jpg" width="100%" height="100%" />
                    </svg>
                    <h2 class="fw-normal">Aditya</h2>
                    <p>I'm a 3rd year CS student interested in FULL STACK WEB DEVLOPMENT Using MERN Stack and Cloud Computing</p>
                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4" data-aos="fade-top" data-aos-duration="1500">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
                        <image href="./images/harsha.jpg" width="100%" height="100%" />
                    </svg>
                    <h2 class="fw-normal">Harsha</h2>
                    <p>I'm a 3rd year CS student interested in FULL STACK WEB DEVLOPMENT , CLOUD COMPUTING AND MACHINE LEARNING</p>
                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4" data-aos="fade-bottom" data-aos-duration="1500">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
                        <image href="./images/chineseboy.jpg" width="100%" height="100%" />
                    </svg>
                    <h2 class="fw-normal">Chaitanya</h2>
                    <p>I'm a 3rd year CS student interested in FULL STACK WEB DEVLOPMENT & UX Design</p>
                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
    
    
            <!-- START THE FEATURETTES -->
    
            <hr class="featurette-divider">
    
    <div class="row featurette" data-aos="fade-right" data-aos-duration="1500">
                <div class="col-md-5 order-md-1">
                    <h2 class="featurette-heading fw-normal lh-1">Our locations </h2>
                   
                </div>
                <div class="col-md-5 order-md-1">
                    <iframe src="https://www.google.com/maps/d/embed?mid=1FNc3SptZDP5rx4cQT5bLm5JG5Hw&hl=en_US&ehbc=2E312F" width="640" height="480"></iframe>
                    
                </div>
            </div>
    
            <hr class="featurette-divider">
    
          
    
            <hr class="featurette-divider">
    
   <div class="row featurette" data-aos="fade-left" data-aos-duration="1500" >
                <div class="col-md-5 order-md-1">
                    <h2 class="featurette-heading fw-normal lh-1">our locations</h2>
                </div>
                <div class="col-md-5 order-md-1">
                   <iframe src="https://www.google.com/maps/d/embed?mid=1Ag_4UqU_cAdh3NOsxvQTMqkO9MY&hl=en&ehbc=2E312F" width="640" height="480"></iframe>
                    
                </div>
            </div>
    
            <hr class="featurette-divider">
    
            <!-- /END THE FEATURETTES -->
    
        </div><!-- /.container -->
    
    
        <!-- FOOTER -->
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>