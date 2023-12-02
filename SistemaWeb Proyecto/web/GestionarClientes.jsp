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
            width: 100%; /* Ancho de la tabla */
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
    <title>Gestionar Clientes</title>
</head>
<body>
    <h1>Gestión de Clientes</h1>
    <h2>Listado de Clientes</h2>
    <h1>Conexion: ${mensaje_conexion}</h1>

    <!-- AÑADIR OPCION DE NUEVO REGISTRO -->
    <a href="/SistemaWeb?accion=AgregarCliente">Agregar cliente</a><br><br>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Fecha Nacimiento</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Genero</th>
                <th>ID Direccion</th>
                <!-- AÑADIR COLUMNA DE ACCIONES-->
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.apellido}" /></td>
                        <td><c:out value="${item.fechaNacimiento}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.email}" /></td>                        
                        <td><c:out value="${item.genero}" /></td>
                        <td><c:out value="${item.idDireccion}" /></td>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="fechaNacimiento" value="${item.fechaNacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="genero" value="${item.genero}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/SistemaWeb/EliminarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="fechaNacimiento" value="${item.fechaNacimiento}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="email" value="${item.email}" />
                                <input type="hidden" name="genero" value="${item.genero}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
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
