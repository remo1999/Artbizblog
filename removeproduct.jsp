<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
		<title>Artbizblog</title>
  
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	</head>
	<style>
	body {
			font: 400 15px/1.8 Lato, sans-serif;
			color: #777;
		}
		h3, h4 {
			margin: 10px 0 30px 0;
			letter-spacing: 10px;      
			font-size: 20px;
			color: #111;
		}
		.bg-1 {
			background: #8fd6bc;
			color: #bdbdbd;
		}
		.bg-1 h3 {color: #fff;}
			.bg-1 p {font-style: italic;}
			.list-group-item:first-child {
			border-top-right-radius: 0;
			border-top-left-radius: 0;
		}
		.list-group-item:last-child {
			border-bottom-right-radius: 0;
			border-bottom-left-radius: 0;
		}
		.nav-tabs li a {
			color: #8fd6bc;
		}
		.navbar {
			font-family: Montserrat, sans-serif;
			margin-bottom: 0;
			background-color: #8fd6bc;
			border: 0;
			font-size: 11px !important;
			letter-spacing: 4px;
			opacity: 0.9;
		}
		.navbar li a, .navbar .navbar-brand { 
			color: #d5d5d5 !important;
		}
		.navbar-nav li a:hover {
			color: #fff !important;
		}
		.navbar-nav li.active a {
			color: #fff !important;
			background-color: #29292c !important;
		}
		.navbar-default .navbar-toggle {
			border-color: transparent;
		}
		.open .dropdown-toggle {
			color: #fff;
			background-color: #555 !important;
		}
		.dropdown-menu li a {
			color: #000 !important;
		}
		.dropdown-menu li a:hover {
			background-color: red !important;
		}
		.btn {
			padding: 10px 20px;
			background-color: #333;
			color: #f1f1f1;
			border-radius: 0;
			transition: .2s;
		}
		.btn:hover, .btn:focus {
			border: 1px solid #333;
			background-color: #fff;
			color: #000;
		}
		* {box-sizing: border-box}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}
		
	</style>
	<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
					<a class="navbar-brand" href="DProducts.jsp"><img src="images\logo.JPG" class="img-circle" height="100" width="100"></a>
				</div>
				<ul class="nav navbar-nav navbar-left">
						<li><a href="productdisplay.jsp"><b>Admin</b></a></li>
				</ul>
			</div>
		</nav>
		
		<br>
		<br>
		<br>
		<br>
		
<form action="removeproduct.jsp" method="post" style="border:1px solid #ccc">
  <div class="container">
    <h1>Remove Products</h1>
    <p>Please fill in the details.</p>
    <hr>

    <label for="id"><b>Product ID</b></label>
    <input type="text" name="pid" required>

    <label for="name"><b>Name</b></label>
    <input type="text"  name="pname" required>
   
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>

    
    
      <button type="submit" class="signupbtn">Remove</button>
   
  </div>
</form>
</body>
</html>