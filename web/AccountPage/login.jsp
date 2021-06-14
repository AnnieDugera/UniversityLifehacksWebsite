<%-- 
    Document   : login
    Created on : 04-Jun-2021, 17:02:10
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    try{
        String name = request.getParameter("name");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240","mydb5240da","fy2zap");    
        PreparedStatement st = conn.prepareStatement("Select name,password from user where name=? and password=?");
        st.setString(1, name);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();                        
        if(rs.next()) {          
           out.println("Valid login credentials");
        session.setAttribute("user", name);
        response.sendRedirect("logged.jsp");
        }
        
        else
           out.println("Invalid login credentials"); 
        response.sendRedirect("accountpage.jsp");
   }
   catch(Exception e){ 
       e.printStackTrace(new java.io.PrintWriter(out));       
   }      
%>