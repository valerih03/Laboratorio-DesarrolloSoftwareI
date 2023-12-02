<%-- 
    Document   : AgregarClientes
    Created on : 18 nov 2023, 8:10:33
    Author     : padil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                /* Estilos para los botones */
        input[type="submit"] {
            padding: 10px 20px;
            border: 2px solid #007bff;
            border-radius: 25px;
            background-color: #fff;
            color: #007bff;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-align: center; /* Centrar el texto dentro del input */
            display: block; /* Mostrar como bloque para centrarlo horizontalmente */
            margin: 0 auto; /* Margen automático para centrarlo horizontalmente */
        }
        input[type="submit"]:hover {
            background-color: #007bff;
            color: #fff;
        }
        /* Estilos para los enlaces */
         a {
            display: inline-block; /* Mostrar como bloque */
            padding: 10px 20px; /* Espaciado interno del botón */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Fondo blanco */
            border: 2px solid #007bff; /* Borde azul */
            text-decoration: none; /* Quitar subrayado */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
             transition: background-color 0.3s ease;
            position: absolute; /* Posicionamiento absoluto */
            left: 20px; /* Posicionamiento a 20px del borde izquierdo */
            top: 20px; /* Posicionamiento a 20px del borde superior */
        }
        a:hover {
            background-color: #007bff; /* Fondo blanco */
            color: #fff;
        }
        </style>
        <title>Agregar Cliente</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: #000066;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: #000066;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo cliente</h1>
        <style>
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
        label {
            text-align: center;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="date"],
        input[type="email"]{
            text-align: center;
            width: calc(100% - 20px);
            margin-bottom: 5px;
            padding: 5px;
            background-color: #fff; /* Fondo blanco */
            border: 1px solid #CCCCCC;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            display: flex;
            padding: 10px 20px; /* Espaciado interno del botón */
            border: 1px solid #007bff; /* Borde */
            border-radius: 25px; /* Bordes redondeados */
            background-color: #fff; /* Color de fondo del botón (blanco) */
            color: #007bff; /* Color del texto */
            text-decoration: none; /* Quitar subrayado */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease; /* Transición suave del color */         
        }
    </style>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarCliente">
            <div>
                <!-- El ID de los clientes es autoincrementable -->
                <label>Nombre:</label>
                <input type="text" name="nombreCliente" id="nombreCliente" required /><br>
                <label>Apellido:</label>
                <input type="text" name="apellidoCliente" id="apellidoCliente" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNacimientoCliente" id="fechaNacimientoCliente" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefonoCliente" id="telefonoCliente" required /><br>
                <label>Correo:</label>
                <input type="email" name="emailCliente" id="emailCliente" required /><br>
                <label>Genero:</label>
                <input type="text" name="generoCliente" id="generoCliente" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="idDireccionCliente" id="idDireccionCliente" required /><br><br>                     
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarClientes">Regresar</a>
            </div>           
        </form>
    </body>
</html>
