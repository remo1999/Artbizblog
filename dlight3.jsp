<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta name="description" content="A clean and easy to maintain gallery using CSS. Lets make grids layout with this gallery which work well on mobile devices. Have a look the demo and dowload source." />
    <meta name="author" content="Codeconvey" />
  
  
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
  <link rel="stylesheet" href="navbar.css">
   <link rel="stylesheet" href="discription.css">
   <title>Artbizblog</title>
<style>
.box {
  position: absolute;
  top: 179%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
</head>

<body >

<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
					<a class="navbar-brand" href="navbar.html"><img src="images\logo.JPG" alt="logo" width=120 height=42></a>
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
<i class="fa fa-search" ></i>
<ul id="myUL">
  <li style="display:none;"><a href="abstract.jsp">Abstract</a></li>
  <li style="display:none;"><a href="human.jsp">Human</a></li>

  <li style="display:none;"><a href="landscape.jsp">Landscape</a></li>
  <li style="display:none;"><a href="mythology.jsp">Mythology</a></li>

  <li style="display:none;"><a href="paper.jsp">paint</a></li>
  <li style="display:none;"><a href="stilllife.jsp">Still life</a></li>
  
  <li style="display:none;"><a href="canvas.jsp">Canvas paintings</a></li>
  <li style="display:none;"><a href="bruches.jsp">Brushes</a></li>
  
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
<br><br><br>
<div class="texts">
  <span>P</span>
  <span>R</span>
  <span>O</span>
  <span>D</span>
  <span>U</span>
  <span>C</span>
  <span>T</span>
  <span></span>
  <span>V</span>
<span>I</span>
  <span>E</span>
<span>W</span>
</div>
<hr>
<div class="card">
  <img src="images\lightpainting3.jpg" alt="PAINTING" style="width:100% ;height:550px">
  <form>
  <input type="hidden" name="pname" value="White Horse">
   <input type="hidden" name="price" value="35000">
    <input type="hidden" name="ptype" value="Light Painting">
     <input type="hidden" name="pcountry" value="India">
      <input type="hidden" name="pmedium" value="Acrylic">
       <input type="hidden" name="psurface" value="pCanvas">
        <input type="hidden" name="orientation" value="Vertical">
         <input type="hidden" name="size" value="Medium">
         <input type="hidden" name="dimension" value="25'' X 25''">
  <h2>White Horse</h2>
 <h2> <p class="price"><b>&#8377;</b>35000</p></h2>
  <p><b>Type	:</b> Light Painting</p>
  <p><b>Country of Origin:</b>	India</p>
  
  <p><b>Medium	: </b>Acrylic</p>
  <p><b>Surface	:</b> Canvas</p>
  <p><b>Orientation:</b> Vertical</p>
  <p><b>Size	: </b>Medium</p>
  <p><b>Dimension (Inches): </b>25'' X 25''</p>
 <br><br><br>
  <p> <div class="box"> <select  name="quantity">
  <option selected hidden value="">Qty</option>
         <option value="1">1</option>
         <option value="2">2</option>
         <option value="3">3</option>
         <option value="4">4</option>
           </select></div>
           </p>
            <input type="hidden" name="avalabilty" value="10"> 
   <p><button class="btn" input type="submit" name="b2" value="Buy Now" formaction="Buynow.jsp"  method="get">Buy Now</button></p>
  <p><button class="btn" input type="submit" name="b1" value="Add to Cart" formaction="./AddToCart">Add to Cart</button></p>
  
  </form> 
</div>

</body>
</html>