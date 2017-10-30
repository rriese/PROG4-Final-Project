<%-- 
    Document   : Teste
    Created on : 11/09/2017, 20:57:16
    Author     : rafael.riese
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <br>
        <%        
        int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
        out.println("Hoje é dia: " + dia); 
        %>
    </body>
</html>
