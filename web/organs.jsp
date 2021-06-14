<%-- 
    dipslay users from atribute
gives acess to pfx c, allow for loops etc
MAKE BUTTION IN FOREACH LOOP,
u.getTipID(); methoe=ds 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />

<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>University Life Hacks</title>

    </head>
    <body>
        <h1><img src="/FYP_UniversityLifehacksWebsite/pics/Logo.png" style="width:30%;min-height:120px;max-height:200px;" alt="university life hacks logo" >



        </h1>

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
        
         <%
       String uid = (String)session.getAttribute("user");
       if (uid == null){
           out.println("<h1>Welcome Guest </h1>");
       }
       else{
           out.println("<h1>Welcome " +uid+ "</h1>");
       }
        %>


        <h2 style="text-align:center;   color:  #625D5D;
            font-family: 'Arsenal', sans-serif;"> Organisation and Study Tips</h2>

        <div> 
            <table style="align:center" id="organs" class="table">
                <tr> 
                    <th scope="col"> Category</th>
                    <th scope="col"> Hack</th>
                        <%--   <th>Tip Number</th>--%>
                    <th scope="col">Current Rank</th>
                    <th scope="col"> Like</th>
                </tr>
                
                <c:forEach var="o" items="${organs}"> 
                    <tr>
                        <td> ${o.getTitle()}</td>
                        <td> ${o.getTip()}</td>
                        <td> ${o.getLike()}</td>
                        
                        <td>  
                            <form action="LikeServlet" method="post">
                                <input type="hidden" name="tipID" value="${o.getTipID()}">
                                <input type="hidden" name="like" value="${o.getLike()}">
                                <input type="submit" name="submit" value="like" class="btn btn-primary"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table> 
        </div>

        <div class="row">
            <div class="column left" style="background-color:#FBE8A6">

                <h2> About us </h2>

                <p> Starting University can be difficult, from keeping up with your college work to starting a weekend job, many struggles come with it. University Life hacks shares tips with students to help them with things such as saving money or finding a helpful way of studying. Students can also  share their own hacks with other students, to make college life a bit easier. Our hacks are tested before they are shared to allow the best experience for students.

            </div>
            <div class="column right" style="background-color:#FBE8A6">
                <h2>Life Hacks Categories</h2>
                <p> <br> 
                <ul class="a">
                    <li>Food</li>
                    <li>Study and Organisation</li>
                    <li>Money Saving</li>
                    <li>Self Care</li>
                </ul></p>
                </p>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    </body>


</html>

