<%-- 
    Document   : PanelAdministrador
    Created on : 7 oct 2023, 09:49:56
    Author     : hvale
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
    </head>
    <body>
        <div><h1> FerreteriaBD </h1></div>
        <%-- Bienvenida --%>
        <c:set var="usuario" value="${param.tfUsuario}" />
        <div><h2><strong>¡Bienvenido, <c:out value="${usuario}"/>!</strong></h2></div>
        <%-- Direccion include --%>
        <br>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="MenuAdministrador.jsp"%>
        </div>
        <div>
            <%@include file="Footer.html"%>
            
        </div>
    </body>
</html>
