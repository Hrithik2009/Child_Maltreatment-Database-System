<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>

    <title>CMDS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css" href="./CSSfiles/home/homepage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="">

  </head>
  <body>

    <div class="header" id="topheader">
      <nav class="navbar navbar-expand-lg  fixed-top">
        <div class="container text-uppercase ps-2">

  <a class="navbar-brand" font-weight-bold text-white href="#">CHILD MALTREATMENT DATABASE SYSTEM</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto text-uppercase">
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Home</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="./HTMLpages/AboutUs.html"><i class="fa fa-info-circle" aria-hidden="none"></i> About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./HTMLpages/Acts.html"><i class="fa fa-gavel" aria-hidden="none"></i>Acts & Rules</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./HTMLpages/Activities.html"><i class="fa fa-trophy" aria-hidden="none"></i>Activities</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./HTMLpages/Contact_Us.html"><i class="fa fa-envelope-square" aria-hidden="none"></i> Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AdminLogin"><i class="fa fa-power-off" aria-hidden="none"></i> Admin Login</a>
      </li>

    </ul>
  </div>
</nav>

<section class="header-section">
  <div class="center-div">
        <div class="header-buttons">
        <a href="./HTMLpages/NGOs.html">NGO</a>
        <a href="./HTMLpages/newsletter.html">NewsLetter</a>
        <a href="./HTMLpages/FAQs.html">FAQ's</a>
        <a href="index.jsp">Statistics</a>
      
    </div>
    
  </div>
  
</section>
      
    </div>

<!--************** header part is ended *************** -->

<!-- three extra header div-->

<section class="header-extradiv">
  <div class="container">
    <div class="row">

      <div class="extra-div col-lg-4 col-md-4 col-12">
        <a href="lodge"><i class="fa-4x fa fa-file-text" aria-hidden="true"></i></a>
        <h2>Lodge Complaint</h2>
        
      </div>

      <div class="extra-div col-lg-4 col-md-4 col-12">
        <a href="track"><i class="fa-4x fa fa-check-circle" aria-hidden="true"></i></a>
        <h2>Track Status</h2>
        
      </div>

      <div class="extra-div col-lg-4 col-md-4 col-12">
        <a href="AuthorityLogin"><i class="fa-4x fa fa-user-circle-o" aria-hidden="true"></i></a>
        <h2>Investigating/Authority Login</h2>
        
      </div>
      
    </div>
    
  </div>
  
</section>

<!-- Slideshow container -->
<div class="slideshow-container" id="footer-show">

  <!-- Full-width images with number and caption text -->
  <h1 align="center">Statistics & Graph </h1>
  <div class="mySlides fade">
    <div class="numbertext">1 / 4</div>
    <img src="images/g1.jpeg" style="width:79%">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 4</div>
    <img src="images/g2.jpeg" style="width:70%">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 4</div>
    <img src="images/g3.jpeg" style="width:58%">
    <div class="text">Caption Three</div>
  </div>

<div class="mySlides fade">
    <div class="numbertext">4 / 4</div>
    <img src="images/g4.jpeg" style="width:69%">
    <div class="text">Caption Four</div>
  </div>
  

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<!-- Ends -->
<hr>
<footer class="footer" id="footerdiv">
<div class="container">
    <div class="row">

      <div class="col-lg-4 col-md-6 col-12 footer-div">
        <div>
          <h3>About Project</h3>
         <p style="text-align:justify;">Child maltreatment database system(CMDS) is an advanced java project.The primary aim of
         the project is to create awareness among the socities regarding the child abuses & find the roots causes of such issue and try to resolve it </p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 col-12 footer-div">
        <div>
          <h3>Navigation Link</h3>
          <li><a href="#">Home</a></li>
          <li><a href="./HTMLpages/AboutUs.html">About Us</a></li>
          <li><a href="./HTMLpages/Acts.html">Acts & Rules</a></li>
          <li><a href="./HTMLpages/Activities.html">Activities</a></li>
        </div>
      </div>

      <div class="col-lg-4 col-md-12 col-12 footer-div">
        <div>
          <h3>NewsLetter</h3>
            <div class="container newsletter-main">
              <div class="row">
                <div class="col-lg-12 col-12">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control news-input" placeholder="Enter Your Email">
                    <div class="input-group-append">
                      <span class="btn btn-primary">Subscribe</span>
                    </div> 
                  </div>  
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

    <div class="mt-5 text-center">
      <P>Copyright @2020 All Rights reserved | This Website is made by Hrithik pandey</P>
    </div>

      <div class="scrollTop float-right">
        <i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
      </div>

    </div>
  </footer>
<script type="text/javascript">
  mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
</script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>
</html>