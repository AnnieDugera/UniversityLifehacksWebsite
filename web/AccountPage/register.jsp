<%-- 
    Document   : signin
    Created on : 10-May-2021, 14:40:20
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
String name= request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
Connection con =DriverManager.getConnection("jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240","mydb5240da","fy2zap");
Statement st= con.createStatement();
int i=st.executeUpdate("insert into user(name,email,password) values('"+name+"','"+email+"','"+password+"')");
out.println("You are now a registered user.");
session.setAttribute("user", name);
response.sendRedirect("http://localhost:8080/FYP_UniversityLifehacksWebsite/Homepage/Homepage.jsp");


%>
