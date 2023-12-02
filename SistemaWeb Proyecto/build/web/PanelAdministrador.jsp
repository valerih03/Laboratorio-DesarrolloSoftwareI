<%-- 
    Document   : PanelAdministrador
    Created on : 7 oct 2023, 9:49:23
    Author     : padil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
        /* Estilos personalizados */
        body {
            background: linear-gradient(to bottom, #007bff, #87ceeb, #87ceeb, #007bff);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Para centrar verticalmente en la página */
        }
        nav ul {
            list-style-type: none; /* Quita los puntos de lista */
            padding: 0;
            margin: 0;
            text-align: center; /* Alineación centrada */
        }
        nav ul li {
            display: inline-block; /* Mostrar en línea */
            margin: 0 10px; /* Espaciado entre elementos */
        }
        nav ul li a {
            text-decoration: none; /* Quitar subrayado de los enlaces */
            color: #333; /* Color del texto */
        }
        nav ul li a:hover {
            color: #007bff; /* Color del texto al pasar el mouse */
        }
        nav ul li {
            margin: 5px; /* Espaciado entre botones */
        }
        nav ul li a {
            display: inline-block; /* Mostrar como bloque */
            padding: 10px 20px; /* Espaciado interno del botón */
            border: 1px solid #007bff; /* Borde */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Color de fondo del botón (blanco) */
            color: #007bff; /* Color del texto */
            text-decoration: none; /* Quitar subrayado */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease; /* Transición suave del color */
        }
        nav ul li a:hover {
            background-color: #e0e0e0; /* Color del botón al pasar el mouse (gris claro) */
        }
         a[href="/SistemaWeb?accion=Login"] {
            padding: 10px 20px; /* Espaciado interno del botón */
            border: 2px solid #007bff; /* Borde del mismo color que el texto */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Color de fondo del botón (blanco) */
            color: #007bff; /* Color del texto */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease, color 0.3s ease; /* Transición suave del color */
            margin-top: 10px; /* Agregar espacio arriba del botón */
            text-decoration: none; /* Quitar subrayado */
        }
        input[type="submit"]:hover {
            background-color: #007bff; /* Fondo blanco */
            color: #fff;
        }
    </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div><h1>Sistema de Ferreteria 1.0</h1></div>
        <%-- DIRECTIVA PAGE --%>
        <% String usuario = request.getParameter("tfUsuario"); %>
        <c:set var="usuario" value="${param.tfUsuario}" />
        <div><h2><strong>¡Bienvenido, <c:out value="${usuario}"/>!</strong></h2></div>

        <%-- DIRECTIVA INCLUDE --%>
        <br>
        <div><h3>Men&uacute; de opciones</h3></div><br>
        <div>
            <%@include file="MenuAdministrador.jsp"%>
        </div>
        <div>
            <%@include file="Footer.html"%>
        </div>
        <br><a href="/SistemaWeb?accion=Login">Cerrar Sesión</a>
    </body>
</html>
