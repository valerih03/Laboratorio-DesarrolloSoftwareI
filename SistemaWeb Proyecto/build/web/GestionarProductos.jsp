<%-- 
    Document   : GestionarProductos
    Created on : 26 nov 2023, 14:19:32
    Author     : padil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        a {
            display: inline-block; /* Mostrar como bloque */
            padding: 10px 15px; /* Espaciado interno del botón */
            border: 1px solid #007bff; /* Borde */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Color de fondo del botón (blanco) */
            color: #007bff; /* Color del texto */
            text-decoration: none; /* Quitar subrayado */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease; /* Transición suave del color */
        }
        a:hover {
            background-color: #007bff; /* Fondo blanco */
            color: #fff;
        }
        table {
            background-color: #fff; /* Color de fondo del botón (blanco) */
            border-collapse: collapse; /* Colapsar bordes */
            width: 75%; /* Ancho de la tabla */
        }
        th, td {
            border: 3px solid black; /* Bordes blancos */
            padding: 8px; /* Espaciado interno de celdas */
            text-align: center; /* Centrar texto */
        }
        br, div {
            position: absolute; /* Posicionamiento absoluto */
            left: 20px; /* Posicionamiento a 20px del borde izquierdo */
            top: 20px; /* Posicionamiento a 20px del borde superior */
        }
        </style>
        <title>Gestionar Productos</title>
    </head>
    <body>
        <h1>Gestión de Productos</h1>
        <h2>Listado de Productos</h2>
        <h1>Conexion: ${mensaje_conexion}</h1>

        <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
        <a href="/SistemaWeb?accion=AgregarProducto">Agregar producto</a><br><br>
        
        <table border="1">
            <thead>
                <tr>
                    <th>IDProducto</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th>Stock</th>
                    <!-- AÑADIR COLUMNA DE ACCIONES-->
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td><c:out value="${item.idProducto}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.descripcion}" /></td> 
                        <td><c:out value="$${item.precio}" /></td> 
                        <td><c:out value="${item.stock}" /></td>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarProducto.jsp">
                                <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="precio" value="${item.precio}" />
                                <input type="hidden" name="stock" value="${item.stock}" />
                                <input type="submit" value="Modificar" />
                            </form>
                                <form method="POST" action="/SistemaWeb/EliminarProducto.jsp">
                                    <input type="hidden" name="idProducto" value="${item.idProducto}" />
                                    <input type="hidden" name="nombre" value="${item.nombre}" />
                                    <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                    <input type="hidden" name="precio" value="${item.precio}" />
                                    <input type="hidden" name="stock" value="${item.stock}" />
                                    <input type="submit" value="Eliminar" />
                                </form>
                            
                        </td>
                        
                    </tr>
                    
                </c:forEach>
                    
        </tbody>            
    </table>
        <br><div>
                <a href="/SistemaWeb/?accion=Login">Regresar</a>
            </div>
</body>
</html>
