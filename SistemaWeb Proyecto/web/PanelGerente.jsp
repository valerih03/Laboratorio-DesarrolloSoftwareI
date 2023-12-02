<%-- 
    Document   : PanelGerente
    Created on : 11 oct 2023, 14:24:38
    Author     : padil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><h1>Sistema de Ferreteria 1.0</h1></div>
        <%-- DIRECTIVA PAGE --%>
        <% String usuario = request.getParameter("tfUsuario"); %>
        <div><h2><strong>Bienvenido, <%= usuario %></strong></h2></div>

        <%-- DIRECTIVA INCLUDE --%>
        <br>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="MenuGerente.jsp"%>
        </div>
        <div>
            <%@include file="Footer.html"%>
        </div>
    </body>
</html>
