<%-- 
    Document   : Login
    Created on : 7 oct 2023, 9:41:39
    Author     : padil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Estilos personalizados */
        body {
            /* Fondo con degradado */
            background: linear-gradient(to bottom, #007bff, #87ceeb, #87ceeb, #007bff);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh; /* Altura mínima para que el footer permanezca abajo */
            margin: 0; /* Eliminar margen predeterminado del body */
        }
        /* Estilos para el formulario */
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"],
        input[type="password"] {
            padding: 8px;
            margin: 5px 0;
            background-color: #fff; /* Color de fondo del botón (blanco) */
            border: 2px solid #007bff; /* Borde del mismo color que el texto */
            border-radius: 5px; /* Bordes redondeados */
            width: 200px; /* Ancho del campo de entrada */
        }
        /* Estilos para los botones */
        input[type="submit"] {
            padding: 10px 20px; /* Espaciado interno del botón */
            border: 2px solid #007bff; /* Borde del mismo color que el texto */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Color de fondo del botón (blanco) */
            color: #007bff; /* Color del texto */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease, color 0.3s ease; /* Transición suave del color */
            margin-top: 10px; /* Agregar espacio arriba del botón */
        }
        input[type="submit"]:hover {
            background-color: #007bff; /* Color de fondo al pasar el mouse */
            color: #fff; /* Color del texto al pasar el mouse */
        }
    </style>
    </head>
    <body>
        <div><h1>Iniciar Sesion</h1></div>
        <div>
            <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=Login">
                <div id="resultlogin"></div>
                <div><h1>Bienvenido al Sistema de Ferreteria</h1></div>
                <%-- CREAR UN OBJETO DE LA CLASE DATE Y FORMATEAR --%>
                <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
                <c:set var="formatoFecha" value="dd/MM/YYYY" />
                <%-- IMPRIMIR FECHA --%>
                <div>
                    <label>
                        <strong>
                            <c:out value="Fecha Actual: " />
                            <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}'/>
                        </strong>
                    </label>
                </div> <br>
                <div><label>Usuario:</label></div>
                <div><input type="text" name="tfUsuario"></div>
                <div><label>Contraseña:</label></div>
                <div><input type="password" name="tfContrasenia"></div>
                <div><input type="submit" value="Iniciar Sesion"></div><br>
            </form>
        </div>
    </body>
</html>
