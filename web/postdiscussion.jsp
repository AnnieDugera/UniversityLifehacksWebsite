

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


<title>University Life Hacks</title>



 <h1><img src="Logo.png" style="width:30%;min-height:120px;max-height:200px;" alt="university life hacks logo" >



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


</style>
</head>


<body>

<div class="topnav">
  <a class="home" href="homepage.html">Home</a>  
  <a href="top10hacks.html">Top 10 hacks this week</a>
  <a href="categories.html">Categories</a>
  <a href="discussionboard.html">Discussion Board</a>
  <a href="submithacks.html">Submit Hacks</a>
  <a href="foodtips.html">Food</a>
  <a href="studyorganisation.html">Organization & Study</a>
  <a href="moneysaving.html">Money Saving</a>
  <a href="selfcare.html">Self Care</a>
  
  
   <div class="topnav-right">
    <a href="#search">Search</a>
  </div>
</div>


 <h2> 
 


 <style>
body{
  
}
.box{
    font-family: 'Arsenal', sans-serif;
    float: left;
    width:600px ;
    padding: 20px;
    background:#FDA172;
    border:5px solid #FA8128;
    border-radius: 10px
        
}
input[type=text],select,textarea{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
 
}



input[type=submit] {
  background-color: #FA8128;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}
input[type=submit]:hover {
  background-color: #FC6A03;
}

.container {
  border-radius: 5px;
  background-color: #FBE8A6;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: form;
  clear: both;
}
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }





</style>
</head>
<body>

    



    <h2 style="text-align:center; font-family: monospace; color: #625D5D;"> Discussion Board</h2><br>

    <br>
      
     <div class="box">
      <form action= "add.jsp" method="get">
    
     <fieldset>

 <lable>Post:</lable><br>
 <textarea  type="text" name="newpost" rows="7" cols="100"></textarea><br>
            <input type="submit" value="Add" >
        </form>

         </div>
  
        <% String newpost = request.getParameter("newpost");

            ArrayList<String> posts = (ArrayList<String>) session.getAttribute("posts");
            if (posts == null)
            {
                posts = new ArrayList();
            }

            if (newpost != null)
            {
                posts.add(newpost);
                session.setAttribute("posts", posts);
            }

        %>

        <table>
         <style>
         
         table {
         float: right;
         padding:20px;
         border-radius:50px;
         font-family: 'Arsenal', sans-serif;
        } 
         
        
     td,th {
      font-family: 'Arsenal', sans-serif;
      float:right;
      background-color: #FDA172;
      width:600px ;
      padding: 15px;
      border:5px solid #FA8128;
      border-radius:15px;
      
    
            } 
th, td{

      padding: 20px;
      


}        
            </style>
            
       
            <thead>
                <tr>
                    <th style="text-align:center; font-family: 'Arsenal',sans-serif; font-size: 20px;;">Recent Posts</th>
                    

                    
                    
                </tr>
            </thead>
            <tbody>
                <%  posts = (ArrayList<String>) session.getAttribute("posts");
                    if (posts != null)
                    {
                        int len = posts.size();

                        int i = 0;
                        for (i = 0; i < len; i++)
                        {
                %>

                <tr>
                    <td><%= posts.get(i)%></td>
                </tr>
                <% 
                    {}
                     
                %>
            </tbody>
        </table> 