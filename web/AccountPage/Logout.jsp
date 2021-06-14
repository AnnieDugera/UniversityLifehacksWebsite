<%-- 
    Document   : Logout
    Created on : 04-Jun-2021, 17:19:22
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION,
                              SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		<jsp:forward page="accountpage.jsp"/>
	</body>
</html>