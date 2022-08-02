<%-- 
    Document   : index
    Created on : Jul 13, 2022, 12:14:52 PM
    Author     : DSN
--%>

<%@taglib prefix="Calc" uri="/WEB-INF/tlds/kevin.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="0; url=Login.jsp">
        <title>JSP Page</title>
    </head>
    <body>
        <Calc:add></Calc:add>
        <br/>
        <Calc:multi num1="12" num2="5"/>
        <br/>
        <Area:square/>
        <Calc:vol l="7" w="5" h="3"/>
        <br/>
        <Calc:word sentence="my name is"/>
        <h1>Hello World!</h1>
    </body>
</html>
