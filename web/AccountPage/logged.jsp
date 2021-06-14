<%-- 
    Document   : logged
    Created on : 04-Jun-2021, 17:18:36
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Success</title>
	</head>
	<body>
		<%
		//HERE WE  ARE GETTING THE ATTRIBUTE DECLARED IN login.JSP AND CHECKING IF IT IS NULL,THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="accountpage.jsp"/>
		<%	
				}
				else
				{//IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
					out.println(" <h1>You have successfully created the Session of User : " +uid+"</h1>");
                                        
					%>
                                        <jsp:forward page="/Homepage/Homepage.jsp"/>
                                        
				<%}
		%> 
	</body>
</html>
