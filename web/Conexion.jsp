<%-- 
    Document   : Conexion
    Created on : 22/01/2022, 12:31:38 PM
    Author     : NATALI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        Connection con = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pixel_brant","root","");
        } catch (Exception ex) {
         
        }           
        
        
        %>
        
        
        
        
        
        
        <h1>Hello World!</h1>
    </body>
</html>
