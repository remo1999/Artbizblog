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
   <title>Artbizblog</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Exo+2:200i);

:root {
  /* Base font size */
  font-size: 10px;   
  
  /* Set neon color */
  --neon-text-color: #f40;
  --neon-border-color: #08f;
}
.wrapper {
  height: 2vh;
  /This part is important for centering/
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
  font-size: 18px;
}

@keyframes typing {
  from {
    width: 0
  }
}
    
@keyframes blink {
  50% {
    border-color: transparent
  }
}

body {
  font-family: 'Exo 2', sans-serif;
    display: flex;
    
 flex-direction: column;
  justify-content: center;
  align-items: center;  
  min-height: 100vh;
}

h1 {
  font-size: 40px;
  font-weight: bold;
  font-style: italic;
  color: black;
  padding: 4rem 6rem 5.5rem;
  border: 0.4rem solid #fff;
  border-radius: 2rem;
  text-transform: uppercase;
  animation: flicker 1.5s infinite alternate;     
}

h1::-moz-selection {
  background-color: var(--neon-border-color);
  color: var(--neon-text-color);
}

h1::selection {
  background-color: var(--neon-border-color);
  color: var(--neon-text-color);
}

h1:focus {
  outline: none;
}

/* Animate neon flicker */
@keyframes flicker {
    
    0%, 19%, 21%, 23%, 25%, 54%, 56%, 100% {
      
        text-shadow:
            -0.2rem -0.2rem 1rem #fff,
            0.2rem 0.2rem 1rem #fff,
            0 0 2rem var(--neon-text-color),
            0 0 4rem var(--neon-text-color),
            0 0 6rem var(--neon-text-color),
            0 0 8rem var(--neon-text-color),
            0 0 10rem var(--neon-text-color);
        
        box-shadow:
            0 0 .5rem #fff,
            inset 0 0 .5rem #fff,
            0 0 2rem var(--neon-border-color),
            inset 0 0 2rem var(--neon-border-color),
            0 0 4rem var(--neon-border-color),
            inset 0 0 4rem var(--neon-border-color);        
    }
    
    20%, 24%, 55% {        
        text-shadow: none;
        box-shadow: none;
    }    
}
.card {
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 900px;
  border: 15px solid black;
  margin: auto;
  text-align: center;
  font-family: arial;
}

body  {
 background-image: url('images/d1.jpg');
  background-size: cover;
   background-position: center;
  background-repeat: no-repeat;

}
p {
  font-family: "Times New Roman", Times, serif;
  font-size:18px

}

.price {
  color: black;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 15px 32px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  text-decoration: none;
  display: inline-block;
  width: 100%;
  font-size: 22px;
}

.card button:hover {
  opacity: 0.5;
}
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
<i class="fa fa-search" style="background-color: #fad399"></i>
<ul id="myUL">
  <li style="display:inline"><a href="abstract.jsp">Abstract</a></li>
  <li style="display:inline"><a href="human.jsp">Human</a></li>

  <li style="display:inline"><a href="landscape.jsp">Landscape</a></li>
  <li style="display:inline"><a href="mythology.jsp">Mythology</a></li>

  <li style="display:inline"><a href="paper.jsp">paint</a></li>
  <li style="display:inline"><a href="stilllife.jsp">Still life</a></li>
  
  <li style="display:inline"><a href="canvas.jsp">Canvas paintings</a></li>
  <li style="display:inline"><a href="bruches.jsp">Brushes</a></li>
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
<br><br><br><br><br>
<h1 contenteditable spellcheck="false">Product View</h1>
<hr>
<div class="card">
  <img src="images\waterpainting1.jpg" alt="PAINTING" style="width:100% ;height:550px">
  <h2>Childhood Memories</h2>
 <h2> <p class="price"><b>&#8377;</b>26000</p></h2>
  <p><b>Type	:</b> Water Color Painting</p>
  <p><b>Country of Origin:</b>	India</p>
  
  <p><b>Medium	: </b>Acrylic</p>
  <p><b>Surface	:</b> Canvas</p>
  <p><b>Orientation:</b> Horizontal</p>
  <p><b>Size	: </b>Medium</p>
  <p><b>Dimension (Inches): </b>25'' X 25''</p>
  
  <p><button>Add to Cart</button></p>
</div>

</body>
</html>