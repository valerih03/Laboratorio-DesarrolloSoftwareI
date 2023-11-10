<%-- 
    Document   : EliminarEmpleado
    Created on : Nov 4, 2023, 10:57:02 AM
    Author     : hvale
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Empleado</title>
    </head>
    <body>
        <h1>Eliminar empleado</h1>
        
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>ID Empleado: ${param.iDEmpleado}</label><br>
                <label>Nombre: ${param.nombre}</label><br>
                <label>Apellido: ${param.apellido}</label><br>
                <label>DUI: ${param.dUI}</label><br>
                <label>ISSS: ${param.iSSS}</label><br>
                <label>Fecha de nacimiento: ${param.fechadeNacimiento}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Email: ${param.email}</label><br>
                <label>Genero: ${param.genero}</label><br>
                <label>IDCargo: ${param.iDCargo}</label><br>
                <label>IDDirección: ${param.iDDireccion}</label>   
                <input type="hidden" name="iDEmpleado" id="iDEmpleado" value="${param.iDEmpleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarEmpleados">Regresar</a><br><br>
                
            </div>             
        </form>
    </body>
</html>
