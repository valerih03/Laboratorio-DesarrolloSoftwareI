<%-- 
    Document   : AgregarEmpleado
    Created on : 4 nov 2023, 08:04:55
    Author     : hvale
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Empleado</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo empleado</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>Nombre:</label>
                <input type="text" name="nombre" id="nombre" required /><br>
                <label>Apellido:</label>
                <input type="text" name="apellido" id="apellido" required /><br>
                <label>DUI:</label>
                <input type="text" name="dUI" id="dUI" required /><br>
                <label>ISSS:</label>
                <input type="text" name="iSSS" id="iSSS" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechadeNacimiento" id="fechadeNacimiento" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Email</label>
                <input type="email" name="email" id="email" required /><br>
                <label>Genero</label>
                <input type="txt" name="genero" id="genero" required /><br>
                <label>IDCargo:</label>
                <input type="text" name="iDCargo" id="iDCargo" required /><br>
                <label>IDDirección:</label>
                <input type="text" name="iDDireccion" id="iDDireccion" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/ServletPrincipal?accion=GestionarEmpleados">Regresar</a>
            </div>            
        </form>
    </body>
</html>
