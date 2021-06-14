<%-- 
    Document   : Homepage
    Created on : 10-May-2021, 12:45:14
    Author     : User
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="styles" 
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


<title>University Life Hacks</title>



 </head><body><h1><img src="/FYP_UniversityLifehacksWebsite/pics/Logo.png" style="width:30%;min-height:120px;max-height:200px;"
                       alt="university life hacks logo">


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

    /* Navbar container */
.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;

  padding: 14px 16px;
  background-color: #FBE8A6;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ddd;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #FBE8A6;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}



</style>




<div class="topnav">
  <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/Homepage/Homepage.jsp">Home</a>  
  <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/hacks.jsp">Top 10 Hacks</a>
  <div class="dropdown">
      <button class="dropbtn">
          <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/CategoriesPage/categorypage.jsp">Categories<i class="fa fa-caret-down"></i></a></button>
      <div class="dropdown-content">
          <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/cooks.jsp">Cooking</a>
          <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/organs.jsp">Organisation & Study</a>
          <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/moneys.jsp">Money Saving</a>
          <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/cares.jsp">Self Care</a>
      </div>
  </div>
  <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/SubmissionPage/submissionpage.jsp">Submit Hacks</a>
  <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/DiscussionboardPage/postdiscussion.jsp">Discussion Board</a>
  
   <div class="topnav-right">
    <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/AccountPage/accountpage.jsp">Account</a>
  </div>
</div>



 <h2> 
 
 <p style="text-align:center;">
 <img src="/FYP_UniversityLifehacksWebsite/pics/webpagepic.png" alt="University Life Hacks homepage" width="90%"> </p>
 
 
</h2>
<%
       String uid = (String)session.getAttribute("user");
       if (uid == null){
           out.println("<h1>Welcome Guest </h1>");
       }
       else{
           out.println("<h1>Welcome " +uid+ "</h1>");
       }
        %>
 <body>
     <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/AccountPage/accountpage.jsp">Register/Login</a>
     <br><br><br>
   <a href="http://localhost:8080/FYP_UniversityLifehacksWebsite/AccountPage/Logout.jsp">Logout</a>
 </body>


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

