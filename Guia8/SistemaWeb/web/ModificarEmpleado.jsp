<%-- 
    Document   : ModificarEmpleado
    Created on : Nov 6, 2023, 22:17:45 PM
    Author     : hvale
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
    </head>
    <body> 
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">Se ha modificado correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se logró modificar de manera correcta</strong></p>
            </c:if>
        </c:if>   
        <h1>Modificar empleado</h1>
        
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarEmpleado">
            <div>
                <label>ID Empleado:</label>
                <input type="text" name="iDEmpleado" id="iDEmpleado" value="${param.iDEmpleado}" readonly /><br>
                <label>Nombre:</label>
                <input type="text" name="nombre" id="nombre" value="${param.nombre}" required /><br>
                <label>Apellido:</label>
                <input type="text" name="apellido" id="apellido" value="${param.apellido}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dUI" id="dUI" value="${param.dUI}" required /><br>
                <label>ISSS:</label>
                <input type="text" name="iSSS" id="iSSS" value="${param.iSSS}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechadeNacimiento" id="fechadeNacimiento" value="${param.fechadeNacimiento}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Email:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>Genero:</label>
                <input type="text" name="genero" id="genero" value="${param.genero}" required /><br>
                <label>ID Cargo:</label>
                <input type="text" name="iDCargo" id="iDCargo" value="${param.iDCargo}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="iDDireccion" id="iDDireccion" value="${param.iDDireccion}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
