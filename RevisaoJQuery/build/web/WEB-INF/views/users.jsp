<%-- 
    Document   : users
    Created on : 13/11/2017, 21:12:27
    Author     : rafael.riese
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${allUsers}" var="users"  varStatus="Contador">
                    <td>${users.getName()}</td>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
