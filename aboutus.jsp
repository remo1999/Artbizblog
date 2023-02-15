<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styles.css">
<title> aboutus </title>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="home.jsp" class="w3-bar-item w3-button"><img src="images\logo.JPG" alt="spa" width=100 height=50 ></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="home.jsp" class="w3-bar-item w3-button">Home</a>
      <a href="aboutus.jsp" class="w3-bar-item w3-button">Aboutus</a>
           <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">Login <i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="login.jsp" class="w3-bar-item w3-button">User</a>
      <a href="admin.jsp" class="w3-bar-item w3-button">Admin</a>
    </div>
  </div>
      <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
      <a href="contactus.jsp" class="w3-bar-item w3-button">Contact Us</a>
    </div>
  </div>
</div>
<br><br><br>

  <!-- About Section -->
  <section class="about" id="about">

    <div class="image">
        <img src="images\aboutus.JPG" alt="">
    </div>

    <div class="content">
        <h3>ABOUT US</h3>
        <p>ARTBIZBLOG is a tech-enabled pure online art gallery and a market disruptor in the art space. For the longest time, paintings and artworks are confined mostly to the four walls of traditional art galleries. Pisarto has taken the digital-first approach and was set up to democratize art. </p>
    <p class="w3-large"> ARTBIZBLOG promises to fulfil three broad objectives:
  Bring Global Art to the doorstep of art lovers at attractive price;
  Encourage & Nurture established and emerging talent;
  Simplify the Art buying process.</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>
 
<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT THE PAINTINGS</h3>
  <p class="w3-center w3-large">Key features of our Art Gallery</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Responsive</p>
      <p> Global Art to the doorstep of art lovers at attractive price.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Passion</p>
      <p>Encourage & Nurture established and emerging talent.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Design</p>
      <p>Simplify the Art buying process.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Support</p>
      <p>It's aims to provide art buyers an opportunity to acquire art at attractive price points along with making the buying process easy.</p>
    </div>
  </div>
</div>
<div class="w3-container w3-light-grey w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Our Skills.</h3>
      <p>Artbizblog relentlessly is in pursuit of making the buying experience comforting by:
Curating artworks carefully that appeal to a larger audience;</p>
      <p>Building a community of artists and providing them a platform to reach out to art lovers directly, thereby making the price point attractive.</p>
    </div>
    <div class="w3-col m6">
      <p class="w3-wide"><i class="fa fa-camera w3-margin-right"></i>Art Galleries</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:90%">90%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-desktop w3-margin-right"></i>Artist</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:85%">85%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-photo w3-margin-right"></i> attractive price</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:75%">75%</div>
      </div>
    </div>
  </div>
</div>
</body>
</html>