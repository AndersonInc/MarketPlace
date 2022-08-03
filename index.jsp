<%-- 
    Document   : index
    Created on : Aug 2, 2022, 5:54:31 PM
    Author     : DSN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <<link rel="stylesheet" href="login.css"/>
    </head>
    <body>
        <div class="form">
    <p>Login</p>
    <form method="post" action="Register">
        <input type="text" name="username" placeholder="username" required>
        <input type="text" name="password" placeholder="password" required>
        <button>login</button>
        <p class="message"> Not registered? <a href="./register.jsp">Sign up here</a></p>

    </form>
</div>        
    </body>
    <%
        
    %>
</html>
