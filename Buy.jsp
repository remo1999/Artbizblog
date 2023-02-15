<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<script>
   function f1(objButton){  
	   var pid=objButton.value;
	   document.getElementById("myText").value = pid;
	} 
        </script>
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
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.button1 {border-radius: 50%;}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button2:hover {
  background-color: #4CAF50;
  color: white;
}
h1 {
  color: #00e6e6;
  text-shadow: 2px 2px 4px green;
}
body

{
margin=0;
padding=0;
font-Family: "Times New Roman", Times, serif;
 background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body background="images\carts.jpg">

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
<br>
<br>
<br>

   
    

  <%@page import=" javax.servlet.http.HttpSession" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<center><h1>Hey! <%=session.getAttribute("username")%>,<br>This is your Order details </h1></center>
<form>
<%
String id = request.getParameter("pid");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "artbizblog";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>

</tr>
<%
String pname = request.getParameter("pname");
int quantity = Integer.parseInt(request.getParameter("quantity"));
int price = Integer.parseInt(request.getParameter("price"));
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
PreparedStatement s = connection.prepareStatement("select * from productdetails where pname=? and quantity=?  and price=? ");
s.setString(1,pname);
s.setInt(2,quantity);
s.setInt(3,price);
resultSet=s.executeQuery();
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("price") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>