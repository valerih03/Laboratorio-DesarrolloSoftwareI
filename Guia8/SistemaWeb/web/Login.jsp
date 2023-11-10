<%-- 
    Document   : Login
    Created on : 7 oct 2023, 09:41:58
    Author     : hvale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <div><h1>Iniciar Sesión</h1></div>
        <div>
            <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=Login">
                <div id="resultLogin"></div>
                <div><h1>Bienvenido al Sistema FerreteriaBD</h1></div>
                <%-- Crear objeto de la clase date y dormatear --%>
                <c:set var="fechaActual" value="<%= new java.util.Date() %>"/>
                <c:set var="formatoFecha" value="dd/MM/YY"/>
                <%-- imprimir fecha --%>
                <div>
                    <label>
                        <strong>
                            <c:out value="Fecha actual: "/>
                            <fmt:formatDate value='${fechaActual}' pattern="${formatoFecha}"/>
                        </strong>
                    </label>
                </div><br>
                <div><label>Usuario:</label></div>
                <div><input type="text" name="tfUsuario"></div>
                <div><label>Contraseña:</label></div>
                <div><input type="password" name="tfContrasenia"></div>
                <div><input type="submit" name="Iniciar Sesión"></div>
            </form>
                
        </div>
    </body>
</html>