<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="styles.css">
<style>

/*# sourceMappingURL=style.css.map */
body,h1 {font-family: "Montserrat", sans-serif}
img {margin-bottom: -7px}
.w3-row-padding img {margin-bottom: 12px}

.mySlides {display:none;}
</style>
</head>
<body>

<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><img src="images\logo.JPG" alt="spa" width=100 height=50 ></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
       <a href="home.jsp" class="w3-bar-item w3-button">Home</a>
      <a href="aboutus.jsp" class="w3-bar-item w3-button">About Us</a>
      <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">Login <i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-b5555555555555555555555555555555555555````````````````````````````````````````````````````````````````````````````````````lock">
      <a href="login.jsp" class="w3-bar-item w3-button">User</a>
      <a href="admin.jsp" class="w3-bar-item w3-button">Admin</a>
    </div>
  </div>
      <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
      <a href="contactus.jsp" class="w3-bar-item w3-button">Contact Us</a>
      
    </div>
  </div>
</div>



<!-- Page content -->

<h2 class="w3-center">Automatic Slideshow</h2>

<div class="w3-content w3-section" style="max-width:3000px">
  <img class="mySlides" src="images\z.jpg" style="width:100%" height="600px">
  <img class="mySlides" src="images\z1.jpg" style="width:100%" height="600px">
  <img class="mySlides" src="images\z2.jpg" style="width:100%" height="600px">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<section class="category">

    <h1 class="heading">Colour Idea!</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/c1.JPG" alt="">
            <h3>Red Colour</h3>
            <p>Add red painting to your wall to decor your space.</p>
            <a href="login.jsp" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="images/c2.JPG" alt="">
            <h3>Orange Colour</h3>
            <p>Add orange painting to your wall to decor your space.</p>
            <a href="login.jsp" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="images/c3.JPG" alt="">
            <h3>Brown Colour</h3>
            <p>Add brown painting to your wall to decor your space.</p>
            <a href="login.jsp" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="images/c4.JPG" alt="">
            <h3>Purple Colour</h3>
            <p>Add purple painting to your wall to decor your space.</p>
            <a href="login.jsp" class="btn">read more</a>
        </div>

    </div>

</section>
<header class="w3-center w3-margin-bottom">
  <h1><b>ARTBIZBLOG</b></h1>
  <p><b>The art gallery</b></p>
  <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">Paintings</button></p>
</header>
</div>

<!-- Photo Grid -->
<div class="w3-row" id="myGrid" style="margin-bottom:128px">
  <div class="w3-third">
    <img src="images\z10.jpg" style="width:100%">
    <img src="images\z13.jpg" style="width:100%">
    <img src="images\z14.jpg" style="width:100%">
    <img src="images\z9.jpg" style="width:100%">
    <img src="images\c2.JPG" style="width:100%">
    <img src="images\c4.JPG" style="width:100%">
  </div>

  <div class="w3-third">
    <img src="images\c6.JPG" style="width:100%">
    <img src="images\z11.jpg" style="width:100%">
    <img src="images\z12.jpg" style="width:100%">
    <img src="images\z7.jpg" style="width:100%">
    <img src="images\z8.jpg" style="width:100%">
    <img src="images\z6.jpg" style="width:100%">
  </div>

  <div class="w3-third">
    <img src="images\z5.jpg" style="width:100%">
    <img src="images\z4.jpg" style="width:100%">
    <img src="images\z3.jpg" style="width:100%">
    <img src="images\c5.JPG" style="width:100%">
    <img src="images\c3.JPG" style="width:100%">
  </div>
</div>

<!-- End Page Content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-light-grey">  
    <div class="w3-row-padding">
      <div class="w3-third">
        <h3>INFO</h3>
        <p>ARTBIZBLOG</p>      
      </div>
    
      <div class="w3-third">
        <h3>BLOG POSTS</h3>
        <ul class="w3-ul">
          <li class="w3-padding-16 w3-hover-black">
              <img src="images\landscape5.jpg" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">city</span><br>
            <span>landscape</span>
          </li>
          <li class="w3-padding-16 w3-hover-black">
           <img src="images\stilllife3.jpg" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">dining</span><br>
            <span>stilllife</span>
          </li> 
        </ul>
      </div>

      <div class="w3-third">
        <h3>POPULAR TAGS</h3>
        <p>
           <span class="w3-tag w3-black w3-margin-bottom">Paintings</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">India</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Hyderabad</span>
          <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Artist</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">price</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">DIY</span>
          <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Creativity</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Family</span>
          <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Decorative</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Shopping</span>
          <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom"></span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Categories</span>
        </p>
      </div>
    </div>
  </footer>
<script>
// Toggle grid padding
function myFunction() {
  var x = document.getElementById("myGrid");
  if (x.className === "w3-row") {
    x.className = "w3-row-padding";
  } else { 
    x.className = x.className.replace("w3-row-padding", "w3-row");
  }
}

// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.width = "100%";
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>