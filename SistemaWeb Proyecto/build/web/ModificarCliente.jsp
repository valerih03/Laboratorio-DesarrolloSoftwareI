<%-- 
    Document   : ModificarCliente
    Created on : 1 dic 2023, 9:48:46
    Author     : padil
--%>

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
        div input[type="submit"] {
            align-items: center;
            padding: 8px 12px; /* Espaciado interno del botón */
            border: 2px solid #007bff; /* Borde celeste */
            border-radius: 5px; /* Bordes redondeados */
            background-color: #fff; /* Fondo blanco */
            color: #007bff; /* Color del texto */
            cursor: pointer; /* Cambiar cursor al pasar el mouse */
            transition: background-color 0.3s ease, color 0.3s ease; /* Transición suave del color */
        }
        div input[type="submit"]:hover {
            align-items: center;
            background-color: #007bff; /* Color de fondo al pasar el mouse */
            color: #fff; /* Color del texto al pasar el mouse */
        }
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
        a {
            display: inline-block;
            padding: 8px 12px;
            border: 2px solid #007bff;
            border-radius: 5px;
            background-color: #fff;
            color: #007bff;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-align: left; /* Alinear a la izquierda */
            position: absolute; /* Posicionamiento absoluto */
            left: 20px; /* Posicionamiento a 20px del borde izquierdo */
            top: 20px; /* Posicionamiento a 20px del borde superior */
        }
        a:hover {
            background-color: #007bff; /* Fondo blanco */
            color: #fff;
        }
        </style>
        <title>Modificar Cliente</title>
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
        <h1>Modificar cliente</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarCliente">
            <div>
                <label>ID Cliente:</label>
                <input type="text" name="idCliente" id="idCliente" value="${param.idCliente}" readonly /><br>
                <label>Nombre:</label>
                <input type="text" name="nombre" id="nombre" value="${param.nombre}" required /><br>
                <label>Apellido:</label>
                <input type="text" name="apellido" id="apellido" value="${param.apellido}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNacimiento" id="fechaNacimiento" value="${param.fechaNacimiento}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Genero</label>
                <input type="text" name="genero" id="genero" value="${param.genero}" required /><br>
                <label>Mail:</label>
                <input type="email" name="email" id="email" value="${param.email}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" required /><br>         
                <br><input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
