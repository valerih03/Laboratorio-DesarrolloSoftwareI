<%-- 
    Document   : AgregarEmpleado
    Created on : 4 nov 2023, 8:06:09
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
            background: linear-gradient(to bottom, #007bff, #87ceeb, #87ceeb, #007bff);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh; /* Altura mínima para que el footer permanezca abajo */
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
        <title>Agregar Empleado</title>
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
        <h1>Agregar nuevo empleado</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>Nombre:</label>
                <input type="text" name="nombre" id="nombre" required /><br>
                <label>Apellido:</label>
                <input type="text" name="apellido" id="apellido" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="isss" id="isss" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNacimiento" id="fechaNacimiento" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Correo:</label>
                <input type="email" name="email" id="email" required /><br>
                <label>Genero:</label>
                <input type="text" name="genero" id="genero" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" required /><br><br>  
                <label>ID Cargo:</label>
                <input type="text" name="idCargo" id="idCargo" required /><br>                    
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div>
            <div> 
                <a href="/SistemaWeb/?accion=GestionarEmpleados">Regresar</a>
            </div>           
        </form>
    </body>
</html>
