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
        <h3>Conexion: ${mensaje_conexion}</h3>
        
        <a href="/SistemaWeb?accion=AgregarEmpleado">Agregar empleado</a><br><br>
        
        <table border="1">
            <thead>
                <tr>
                    <th>IDEmpleado</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>DUI</th>
                    <th>ISSS</th>
                    <th>FechadeNacimiento</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Genero</th>
                    <th>IDCargo</th>
                    <th>IDDireccion</th>
                    
                    <!-- AÑADIR COLUMNA DE ACCIONES-->
                    <th>Acciones</th>
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
                        <td><c:out value="${item.email}" /></td>
                        <td><c:out value="${item.genero}" /></td>
                        <td><c:out value="${item.iDCargo}" /></td>
                        <td><c:out value="${item.iDDireccion}" /></td>
                        
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarEmpleado.jsp">
                                <input type="hidden" name="iDEmpleado" value="${item.iDEmpleado}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="dUI" value="${item.dUI}" />
                                <input type="hidden" name="iSSS" value="${item.iSSS}" />
                                <input type="hidden" name="fechadeNacimiento" value="${item.fechadeNacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="genero" value="${item.genero}" />
                                <input type="hidden" name="iDCargo" value="${item.iDCargo}" />
                                <input type="hidden" name="iDDireccion" value="${item.iDDireccion}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarEmpleado.jsp">
                                <input type="hidden" name="iDEmpleado" value="${item.iDEmpleado}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="dUI" value="${item.dUI}" />
                                <input type="hidden" name="iSSS" value="${item.iSSS}" />
                                <input type="hidden" name="fechadeNacimiento" value="${item.fechadeNacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="genero" value="${item.genero}" />
                                <input type="hidden" name="iDCargo" value="${item.iDCargo}" />
                                <input type="hidden" name="iDDireccion" value="${item.iDDireccion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>