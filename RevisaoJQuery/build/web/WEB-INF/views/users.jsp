<%-- 
    Document   : users
    Created on : 13/11/2017, 21:12:27
    Author     : rafael.riese
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="https://upload.wikimedia.org/wikipedia/commons/2/2e/Mackenzie_M.png">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-default" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle botNavMenu" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="icon-bar corActive">
                        </span>
                        <span class="icon-bar corActive">
                        </span>
                        <span class="icon-bar corActive">
                        </span>
                    </button>
                    <a class="navbar-brand" href="mvcmenu?do=initial"><p class="tituloMyStreet"><b>Riese's Shop</b></p></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="mvcmenu?do=initial"><p class="corMenuTexto"><span class="glyphicon glyphicon-home glyPosiMenu"></span> Home</p></a>
                        </li>
                        <li class="corActive">
                            <a href=""><p class="corActiveTexto"><span class="glyphicon glyphicon-user glyPosiMenu"></span> Bem Vindo(a) ${userName}</p></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
                        
        <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${allUsers}" var="o">
                <tr>
                    <td>${o.id}</td>
                    <td>${o.name}</td>
                </tr>
            </c:forEach>
        </tbody>
                        
    </body>
</html>
