<%-- 
USUER SERVELT GOES TO DAO, THIS FORCES IT TO RUN THE SERVLET 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>


        <jsp:forward page ="HackServlet"></jsp:forward> 

        


    
