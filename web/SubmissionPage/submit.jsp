<%-- 
    Document   : submit
    Created on : 10-May-2021, 14:40:52
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
String title= request.getParameter("title");
String category = request.getParameter("category");
String hack=request.getParameter("hack");
String url=request.getParameter("url");
Connection con =DriverManager.getConnection("jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240","mydb5240da","fy2zap");
Statement st= con.createStatement();
int i=st.executeUpdate("insert into temphacks(title,category,hack,url) values('"+title+"','"+category+"','"+hack+"','"+url+"')");


%>






<html>
    <head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


<title>University Life Hacks</title>



 </head><body><h1><img src="/FYP_UniversityLifehacksWebsite/pics/Logo.png" style="width:30%;min-height:120px;max-height:200px;" alt="university life hacks logo">


<form class="example" action="/action_page.php" style="margin-left:auto;max-width:400px">

</form>

</h1>
<style>
 
 body {background-color:#fcf9D0 ;}
    
    
  .topnav {
  overflow: hidden;
  background-color:#FBE8A6 ;
}

.topnav a {
  float: left;
  color:  #625D5D;
  font-family: 'Arsenal', sans-serif;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
background-color: #ddd;
  color: black;
  
}

.topnav a.active {
 
}

.topnav-right {
  float: right;
}

.container {
    position: relative;
    display: flex;
    min-width: 100px;
}

</style>


Hack submitted for review
<a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/Homepage/Homepage.jsp">Return to Website</a>



 
 
</h2>



<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
  
}


.column {
  color: #625D5D;
  font-family: 'Arsenal', sans-serif;
  font-size: 17px;
  text-align: center;
  float: left;
  padding: 10px;
  height: 300px; 
}

.left {
  width: 50%;
}

.right {
  width: 50%;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>



<style>

  ul.a {
  list-style-type: circle;
}
</style>

<h2><br> <br> </h2>

<div class="row">
  <div class="column left" style="background-color:#FBE8A6">
 
    <h2> About us </h2>

    <p> Starting University can be difficult, from keeping up with your college work to starting a weekend job, many struggles come with it. University Life hacks shares tips with students to help them with things such as saving money or finding a helpful way of studying. Students can also  share their own hacks with other students, to make college life a bit easier. Our hacks are tested before they are shared to allow the best experience for students.

  </p></div>
  <div class="column right" style="background-color:#FBE8A6">
    <h2>Life Hacks Categories</h2>
    <p> <br> 
</p><ul class="a">
  <li>Food</li>
  <li>Study and Organisation</li>
  <li>Money Saving</li>
  <li>Self Care</li>
</ul><p></p>
<p></p>
  </div>
</div>

<p1>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</table></fieldset></form></p1></body></html>