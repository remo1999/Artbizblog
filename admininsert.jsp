<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
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
   <link rel="stylesheet" href="admininsert.css">
   <title>Artbizblog</title>
<style>

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
					<a class="navbar-brand" href="navbar.html"><img src="images\logo.JPG" alt="logo" width=120 height=42></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-left">
						
						<li><a href="productdisplay.jsp">HOME</a></li>
						<li><a href="admin.jsp">LOG OUT</a></li>
					
					</ul>
		
					<ul class="nav navbar-nav navbar-right">	
  
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

<br>
<div class="user">
    <header class="user__header">
        <h1 class="user__title">Insert the Products</h1>
    </header>
    
    <form class="form">
        <div class="form__group">
            <input type="text" placeholder="PRODUCT NAME" class="form__input" name="pname" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT PRICE" class="form__input" name="price"/>
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT TYPE" class="form__input" name="ptype"/>
        </div>
         <div class="form__group">
            <input type="text" placeholder="PRODUCT COUNTRY" class="form__input" name="pcountry" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT MEDIUM" class="form__input"  name="pmedium"/>
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT SURFACE" class="form__input" name="psurface"/>
        </div>
         <div class="form__group">
            <input type="text" placeholder="PRODUCT ORIENTATION" class="form__input" name="orientation" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT SIZE" class="form__input" name="size" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT DIMENSION" class="form__input" name="dimension"/>
        </div>
        <div class="form__group">
            <input type="text" placeholder="PRODUCT QUANTITY" class="form__input" name="quantity" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="PRODUCT AVALABILITY" class="form__input" name="avalabilty"/>
        </div>
        <button class="btn" input type="submit" name="b2" value="Buy Now" formaction="./insertproduct">create</button>
    </form>
</div>

</body>
</html>
