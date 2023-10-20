<%-- 
    Document   : GestionarEmpleados
    Created on : 14 oct 2023, 10:15:59
    Author     : hvale
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>iDEmpleado</th>
                    <th>nombre</th>
                    <th>apellido</th>
                    <th>dUI</th>
                    <th>iSSS</th>
                    <th>fechadeNacimiento</th>
                    <th>telefono</th>
                    <th>correo</th>
                    <th>iDCargo</th>
                    <th>iDDireccion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.iDEmpleado}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.apellido}" /></td>                        
                        <td><c:out value="${item.dUI}" /></td>
                        <td><c:out value="${item.iSSS}" /></td>
                        <td><c:out value="${item.fechadeNacimiento}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>                        
                        <td><c:out value="${item.iDCargo}" /></td>
                        <td><c:out value="${item.iDDireccion}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>