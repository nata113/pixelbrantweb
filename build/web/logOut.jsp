<%-- 
    Document   : logOut
    Created on : 5/02/2022, 05:22:28 PM
    Author     : NATALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%session.invalidate();%>
       
       <jsp:forward page="login.jsp" />
</html>
