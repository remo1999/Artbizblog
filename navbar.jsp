<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta name="description" content="A clean and easy to maintain gallery using CSS. Lets make grids layout with this gallery which work well on mobile devices. Have a look the demo and dowload source." />
    <meta name="author" content="Codeconvey" />
    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" type="text/css" href="demo.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title>Artbizblog</title>
    <link rel="stylesheet" href="navbar.css">
	<style>
	.wrapper {
  height: 2vh;
  /*This part is important for centering*/
  display: flex;
  align-items: center;
  justify-content: center;
}

.typing-demo {
  width: 22ch;
  animation: typing 5s steps(22), blink .5s step-end infinite alternate;
  white-space: nowrap;
  overflow: hidden;
  border-right: 3px solid;
  font-family: monospace;
  font-size: 20px;
}

@keyframes typing {
  from {
    width: 0
  }
}
    
body {font-family: "Lato", sans-serif}
.mySlides {display:none;}
.image {
  height: 200px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;}
  .title-word {
  animation: color-animation 4s linear infinite;
}

.title-word-1 {
  --color-1: #cc0099;
  --color-2: #3D8DAE;
  --color-3: #ff0066;
}
@keyframes color-animation {
  0%    {color: var(--color-1)}
  32%   {color: var(--color-1)}
  33%   {color: var(--color-2)}
  65%   {color: var(--color-2)}
  66%   {color: var(--color-3)}
  99%   {color: var(--color-3)}
  100%  {color: var(--color-1)}
}
</style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" >
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
				<a class="navbar-brand" href="navbar.jsp"><img src="images\logo.JPG" alt="logo" width=120 height=42 ></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="navbar.jsp">HOME</a></li>
						<li><a href="logout.jsp">LOG OUT</a></li>  
					<li><h2 class="title">
    <span class="title-word title-word-1" ><div class="wrapper">
    <div class="typing-demo"><%String username=(String)session.getAttribute("username"); out.print("welcome &nbsp"+username);%></div>
</div></span></h2>
</li>		
  						
					</ul>
		
					<ul class="nav navbar-nav navbar-right">
						
<li class="search">
            
  <div class="top">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for paintings!" title="Type in a name">
  <i class="fas fa-search "></i>
<ul id="myUL">
  <li style="display:none;"><a href="abstract.jsp">Abstract</a></li>
  <li style="display:none;"><a href="human.jsp">Human</a></li>

  <li style="display:none;"><a href="landscape.jsp">Landscape</a></li>
  <li style="display:none;"><a href="mythology.jsp">Mythology</a></li>

  <li style="display:none;"><a href="paper.jsp">paint</a></li>
  <li style="display:none;"><a href="stilllife.jsp">Still life</a></li>
  
  <li style="display:none;"><a href="canvas.jsp">Canvas paintings</a></li>
  <li style="display:none"><a href="bruches.jsp">Brushes</a></li>
  
</ul>
</div>
</li>

<script>
function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>

        			<li><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
					</ul>
				</div>
			</div>
		</nav>


<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
<!-- Page categories -->
<div class="wrap" id="home">
<span class="decor"></span>
<nav class="de">
  <ul class="primary">
    <li>
      <a href="">ART CATEGORIES</a>
      <ul class="sub">
        <li><a href="landscape.jsp">Landscape Paintings</a></li>
        <li><a href="human.jsp">Human Paintings</a></li>
        <li><a href="mythology.jsp">Mythology paintings</a></li>
        <li><a href="abstract.jsp">Abstract paintings</a></li>
        <li><a href="stilllife.jsp">still life paintings</a></li>
         
      </ul>
    </li>
<li>
      <a href="">MEDIUM</a>
      <ul class="sub">
        <li><a href="acrylic.jsp">Acrylic paints</a></li>
        <li><a href="watercolor.jsp">watercolor paints</a></li>
      </ul>
    </li>
<li>
      <a href="">SURFACE</a>
      <ul class="sub">
        <li><a href="canvas.jsp">Canvas Paintings</a></li>
        <li><a href="paper.jsp">Paper Paintings</a></li>
      </ul>
    </li>
    <li>
      <a href="">SHADES</a>
      <ul class="sub">
        <li><a href="bw.jsp">Black and White</a></li>
        <li><a href="dark.jsp">Dark shades</a></li>
        <li><a href="light.jsp">Light shades</a></li>
      </ul>
    </li>
    <li>
      <a href="">Best Sellers</a>
      <ul class="sub">
        <li><a href="mythology.jsp">Mythology paintings</a></li>
        <li><a href="abstract.jsp">Abstract paintings</a></li>
     <li><a href="landscape.jsp">Landscape Paintings</a></li>
      </ul>  
    </li>
    <li>
      <a href="">Suplies</a>
      <ul class="sub">
        <li><a href="bruches.jsp">Bruches</a></li>
        <li><a href="paints.jsp">Paints</a></li>
        <li><a href="surface.jsp">surface</a></li>
        <li><a href="easel.jsp">Easel</a></li>
      </ul>  
    </li>
    <li>
      <a href="">More</a>
      <ul class="sub">
        <li><a href="bookmark.jsp">Bookmark</a></li>
        <li><a href="greetingcard.jsp">Greeting cards</a></li>
      </ul>  
    </li>
  </ul>
</nav>
</div>   

<!-- Page content -->

<div class="w3-content w3-display-container">

<div class="w3-display-container mySlides">
  <img src="images\slide3.jpg" style="width:100%">
  <div class="w3-display-bottomleft w3-large w3-container w3-padding-16 w3-black">
    Art to refresh your space.
  </div>
</div>

<div class="w3-display-container mySlides">
  <img src="images\slide2.jpg" style="width:100%">
  <div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
    you have the wall,we have the painting.
  </div>
</div>

<div class="w3-display-container mySlides">
  <img src="images\slide3.jpg" style="width:100%">
  <div class="w3-display-topleft w3-large w3-container w3-padding-16 w3-black">
   Art is never finished, only abandoned.
  </div>
</div>

<div class="w3-display-container mySlides">
  <img src="images\slide4.jpg" style="width:100%">
  <div class="w3-display-topright w3-large w3-container w3-padding-16 w3-black">
    A true masterpiece does not tell everything.
  </div>
</div>

<div class="w3-display-container mySlides">
  <img src="images\slide5.jpg" style="width:100%">
  <div class="w3-display-middle w3-large w3-container w3-padding-16 w3-black">
  It’s not what you look at that matters, it’s what you see.
  </div>
</div>

<button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
<button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>SHOP BY COLOUR</h1>
            </div>
        </div>
    </div>
</header>
 <div class="w3-container w3-padding-32" id="projects">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">buy the collection</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Red</div>
        <img src="images/c1.JPG"  alt="House" style="width:100%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Orange</div>
        <img src="images/c2.JPG"  alt="House" style="width:100%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Brown</div>
        <img src="images/c3.JPG" alt="House" style="width:100%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Violet</div>
        <img src="images/c4.JPG"  alt="House" style="width:100%" height=400>
      </div>
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Green</div>
        <img src="images/c5.JPG"  alt="House" style="width:99%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">yellow</div>
        <img src="images/c6.JPG"  alt="House" style="width:99%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Black & White</div>
        <img src="images/c7.JPG" " alt="House" style="width:99%" height=400>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Blue</div>
        <img src="images/c8.JPG" alt="House" style="width:99%" height=400>
      </div>
    </div>
  </div>
<footer class="w3-container w3-padding-32 w3-dark-grey">  
    <div class="w3-row-padding">
      <div class="w3-third">
        <h3>INFO</h3>
        <p>ARTBIZBLOG</p>    
        <a href="#home" class="w3-button w3-black w3-padding-large w3-margin-bottom"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>  
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
</body>
</html>