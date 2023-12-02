<%-- 
    Document   : MenuAdministrador
    Created on : 7 oct 2023, 10:27:17
    Author     : padil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Menu Administrador</title>
    </head>
    <body>
        <nav>
                <ul>
                    <li><a href="/SistemaWeb?accion=AgregarEmpleado">Registro Empleados</a></li>
                    <li><a href="/SistemaWeb?accion=AgregarProducto">Registro Productos</a></li>
                    <li><a href="/SistemaWeb?accion=GestionarProductos">Gestionar Productos</a></li>
                    <li><a href="/SistemaWeb?accion=GestionarClientes">Gestionar Clientes</a></li>
                    <li><a href="/SistemaWeb?accion=GestionarEmpleados">Gestionar Empleados</a></li><br>
                </ul>
            
            </nav>
    </body>
</html>
