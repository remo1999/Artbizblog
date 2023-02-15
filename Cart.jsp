<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@page import=" javax.servlet.http.HttpSession" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
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

   <center><h1>Hey! <%=session.getAttribute("username")%>,<br>This is your Shopping Cart.</h1></center>
    


<form>
<table id="customers" align=center cellspacing=40px >

<tr>
<th>Cart id</th>
<th>Product</th>
<th >Quantity</th>
<th >Amount</th>
<th></th>
</tr>
<%   
      String id = (String)session.getAttribute("username");
      String driverName = "com.mysql.jdbc.Driver";
      String connectionUrl = "jdbc:mysql://localhost:3306/";
      String dbName = "artbizblog";
      String userId = "root";
      String password = "root";
      int total=0;
      try {
      Class.forName(driverName);
      } catch (ClassNotFoundException e) {
      e.printStackTrace();
      }

      Connection connection = null;
      Statement statement = null;
      ResultSet resultSet = null;
      try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
PreparedStatement st = connection.prepareStatement("select * from acart where username=?");
st.setString(1,id);
resultSet=st.executeQuery();
while(resultSet.next()){
total+=resultSet.getInt("total");%>

<tr>
<td ><center><%=resultSet.getString("pid") %></center></td>
<td ><center><%=resultSet.getString("pname") %></center></td>
<td><center><button type="submit" class="button button1" onclick='f1(this)' value='<%=resultSet.getString("pid") %>' formaction="IncrementCartItem" >+</button><%=resultSet.getInt("quantity") %>
<button type="submit" class="button button1" value='<%=resultSet.getString("pid") %>' onclick='f1(this)' formaction="DecrementCartItem">-</button></center></td>
<td ><center><%=resultSet.getInt("total") %></center></td>
<td ><button type='submit' class="button button2" onclick='f1(this)' value='<%=resultSet.getString("pid") %>' formaction="./RemoveFromCart" >remove</button></center></td>
</tr>

<input type=hidden id="myText" name="t1" >

<% 
int price=resultSet.getInt("total");
session.setAttribute("fee", total);
      }
} catch (Exception e) {
e.printStackTrace();
}%>
<tr>
<td colspan="3">TOTAL</td>
<td  align="left"><%out.println(total); %></td>
</tr>
</table>


<center><button type='submit' id="clear-cart"  formaction="./Clear" method="get" class="button">Clear Cart</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type='submit' id="clear-cart"  class="button" formaction="payment.jsp" method="get">Proceed</button></center>
</form>
</body>
</html>
