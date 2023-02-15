<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

 <meta name="viewport" content="width=device-width">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta charset="utf-8">
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
    <meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title>Artbizblog</title>
    <link rel="stylesheet" href="navbar.css">
<link rel="stylesheet" href="categories.css">
	<style>
body {font-family: "Lato", sans-serif}
.mySlides {display:none;}
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

<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
					<a class="navbar-brand" href="navbar.jsp"><img src="images\logo.JPG" alt="logo" width=120 height=42></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-left">
						
						<li><a href="navbar.jsp">HOME</a></li>
						<li><a href="logout.jsp">LOG OUT</a></li>
					<li><h2 class="title">
    <span class="title-word title-word-1" style="font-size:20px;"><%String username=(String)session.getAttribute("username"); out.print("welcome &nbsp"+username);%> </span></h2></li>	
					</ul>
		
					<ul class="nav navbar-nav navbar-right">
						
<li class="search">
            
  <div class="top">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for paintings!" title="Type in a name">
<i class="fa fa-search"></i>
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

<!-- Page categories -->

<div class="wrap">
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
<br>
<div class="content">
  <h2 class="text_shadows">ABSTRACT PAINTING</h2>
</div>
<br>
<!-- Page content -->
<h2>Abstract art is art that does not represent an accurate depiction of visual reality, communicating instead through lines, shapes, colours, forms and gestural marks. Abstract artists use a variety of techniques to create their work, mixing traditional means with more experimental ideas.</h2>
<div class="row">
    <div class="col-md-4 col-sm-8">
        <div class="product-grid">
            <div class="product-image">
                <a href="#" class="image">
                    <img class="img-1" src="images\abstractpainting1.jpg" >
                </a>
                <ul class="product-links">
                    <li><a href="dabstract1.jsp"><i class="fa fa-eye"></i></a></li>
                </ul>
            </div>
            <div class="product-content">
                <div class="price"><b>&#8377;</b>28000</div>
                <h3 class="title"><a href="dabstract1.jsp">City of Dreams</a></h3>
               <ul class="rating"> <center>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="far fa-star"></li>
                    <li class="far fa-star"></li>
            </center>    </ul> 
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-8">
        <div class="product-grid">
            <div class="product-image">
                <a href="#" class="image">
                    <img class="img-1" src="images\abstractpainting2.jpg"  >
                </a>
                <ul class="product-links">
                    <li><a href="dabstract2.jsp"><i class="fa fa-eye"></i></a></li>
                </ul>
            </div>
            <div class="product-content">
                <div class="price"><b>&#8377;</b>44000 <span><b>&#8377;</b>530000.11</span></div>
                <h3 class="title"><a href="dabstract2.jsp">Dash of Love</a></h3>
                <ul class="rating"><center>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="far fa-star"></li>
            </center>    </ul>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4 col-sm-8">
        <div class="product-grid">
            <div class="product-image">
                <a href="#" class="image">
                    <img class="img-1" src="images\abstractpainting3.jpg" >
                </a>
                <ul class="product-links">
                    <li><a href="dabstract3.jsp"><i class="fa fa-eye"></i></a></li>
                </ul>
            </div>
            <div class="product-content">
                <div class="price"><b>&#8377;</b>35000<span><b>&#8377;</b>49000.00</span></div>
                <h3 class="title"><a href="dabstract3.jsp">Waterfall</a></h3>
               <ul class="rating"> <center>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="far fa-star"></li>
                    <li class="far fa-star"></li>
            </center>    </ul> 
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-8">
        <div class="product-grid">
            <div class="product-image">
                <a href="#" class="image">
                    <img class="img-1" src="images\abstractpainting4.jpg"  >
                </a>
                <ul class="product-links">
                    <li><a href="dabstract4.jsp"><i class="fa fa-eye"></i></a></li>
                </ul>
            </div>
            <div class="product-content">
                <div class="price">Rs40000<span>Rs50000</span></div>
                <h3 class="title"><a href="dabstract4.jsp">Searching</a></h3>
                <ul class="rating"><center>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="fas fa-star"></li>
                    <li class="far fa-star"></li>
            </center>    </ul>
            </div>
        </div>
    </div>
        </div>
    </div>
</div>
</body>
</html>