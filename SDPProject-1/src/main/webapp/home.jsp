<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link type="text/css" rel="stylesheet" href="css/navbar.css">
<link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body class="">
	<%@ include file="navbar.jsp" %>
	  <section class="  firstSection">
        <div class="box-main">
            <div class="firstHalf">
                <p class="text-big">New Services With Low Charges</p>
                <p>Food delivery heroes are expected to provide prompt and efficient service, ensuring that hot, fresh meals reach customers on time.</p>
                    <div class="buttons">
                        <a href="${pageContext.request.contextPath}/delivery/orders"><button class="btn glow-on-hover">Orders</button></a>
                        <a href=""><button class="btn glow-on-hover">Restraunts</button></a>
                    </div>
            </div>
            <div class="secondHalf text-white">
                <img src="images/logo.jpg" alt="">
            </div>
        </div>
    </section>
	<section class="section text-white">
        <div class="paras">
            <p class="sectionTag text-big">Canis Major Dwarf</p>
            <p class="sectionSubTag text-small"> The existence of a strong elliptical-shaped stellar overdensity was reported in November 2003 by an international team of French, Italian, British and Australian astronomers, who claimed their study pointed to a newly discovered dwarf galaxy: the Canis Major Dwarf Galaxy.[3] This structure is located closer to the Sun than the center of this galaxy, at approximately 7.7 kpc (25,000 ly) from the Sun.
                lorem400
                The team of astronomers that discovered it was collaborating on analysis of data from the Two-Micron All Sky Survey (2MASS), a comprehensive survey of the sky in infrared light, which is not blocked by gas and dust as severely as visible light. Because of this technique, scientists were able to detect a very significant overdensity of class M giant stars in a part of the sky occupied by the Canis Major constellation, along with several other related structures composed of this type of star, two of which form broad, faint arcs</p>
        </div>
        <div class="thumbnail">
            <img src="images/canis major dwarf.jpg" alt="laptopImage" class="imgFluid">
        </div>
    </section>
    <section class="section left text-white">
        <div class="paras">
            <p class="sectionTag text-big">Andromeda Galaxy</p>
            <p class="sectionSubTag text-small">The Andromeda Galaxy (IPA: /ænˈdrɒmɪdə/), also known as Messier 31, M31, or NGC 224 and originally the Andromeda Nebula, is a barred spiral galaxy with the diameter of about 46.56 kiloparsecs (152,000 light-years)[8] approximately 765 kpc (2.5 million light-years) from Earth and the nearest large galaxy to the Milky Way. The galaxy's name stems from the area of Earth's sky in which it appears, the constellation of Andromeda, which itself is named after the princess who was the wife of Perseus in Greek mythology.</p>
        </div>
        <div class="thumbnail">
            <img src="images/Andromeda.jpg" alt="laptopImage" class="imgFluid">
        </div>
    </section>
    <section class="section text-white">
        <div class="paras">
            <p class="sectionTag text-big">Voyegar 2</p>
            <p class="sectionSubTag text-small"> Voyager 2 is a space probe launched by NASA on August 20, 1977, to study the outer planets and interstellar space beyond the Sun's heliosphere. As a part of the Voyager program, it was launched 16 days before its twin, Voyager 1, on a trajectory that took longer to reach gas giants Jupiter and Saturn but enabled further encounters with ice giants Uranus and Neptune.[5] Voyager 2 remains the only spacecraft to have visited either of the ice giant planets. Voyager 2 was the fourth of five spacecraft to achieve Solar escape velocity, which allowed it to leave the Solar System.</p>
        </div>
        <div class="thumbnail">
            <img src="images/Voyager.webp" alt="laptopImage" class="imgFluid">
        </div>
    </section>
	
	<%@ include file="footer.jsp" %>
	
	
</body>
</html>