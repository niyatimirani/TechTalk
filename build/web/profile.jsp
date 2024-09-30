
<%@page import="com.blog.entities.User"%>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = (User)session.getAttribute("Current");
    if(user==null)
    {
    response.sendRedirect("Login.jsp");
}
   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <h1>Hello World! Login Done </h1>
    </body>
</html>
