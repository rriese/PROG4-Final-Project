<%-- 
    Document   : users
    Created on : 13/11/2017, 21:12:27
    Author     : rafael.riese
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <%@ include file="/WEB-INF/views/layout/links.jsp" %>
    <script src="resources/js/bootbox.js"></script>

    <body>

        <%@ include file="/WEB-INF/views/layout/menu.jsp" %>

        <div id="table">
            <table class="table table-inverse">
                <thead>
                    <tr>
                        <th style="text-align: center">Id</th>
                        <th style="text-align: center">Nome</th>
                        <th style="text-align: center">Cpf</th>
                        <th style="text-align: center">Email</th>
                        <th style="text-align: center">#</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allUsers}" var="o">
                        <tr>
                            <td>${o.id}</td>
                            <td>${o.name}</td>
                            <td>${o.cpf}</td>
                            <td>${o.email}</td>
                            <td>
                                <button type="button" data-customer-id="${o.id}" class="btn btn-danger" id="remove">Remover</button>
                                <button type="button" data-customer-id="${o.id}" class="btn btn-warning" onclick="window.location.href='user?do=editclient&clientId=${o.id}'">Editar</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>

    </body>
</html>
