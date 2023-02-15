<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where username='"+username+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("username").equals(username))
{
	
		
out.println("Welcome " +username);
session.setAttribute("username", username);
response.sendRedirect("navbar.jsp");
}
else{
out.println("user not found");
response.sendRedirect("login.jsp");

}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
body

{
margin=0;
padding=0;
font-Family: "Times New Roman", Times, serif;
 background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.image {
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.cust
{
position:absolute;
margin-right:18px;
width:10px;
height:8px;
padding-top: 4px;

}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;

}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
</style>
<link rel="stylesheet" href="style.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body background="images\login.jpg">

<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><img src="images\logo.JPG" alt="spa" width=100 height=50 ></a>
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

<div class="login-page">
<div class="form">
<form action="login.jsp" method=post >
<h1> <center> <u> LOGIN </center> </u> </h1>
<label for="username"><b>USERNAME</b></label> <br>
<input type="text"  name="username" placeholder="&nbsp&nbsp&nbsp&nbsp Enter Username" required/><br>
<label for="password" ><b>PASSWORD</b></label> <br>
<input type="password" name="password"  placeholder="&nbsp&nbsp&nbsp&nbsp&nbsp Enter Password" required/>
<button>LOGIN</button>
<p class="message">Not Registered? <a href="register.html">REGISTER </a></p>
</form>
</div>
</div>
</body>
</html>