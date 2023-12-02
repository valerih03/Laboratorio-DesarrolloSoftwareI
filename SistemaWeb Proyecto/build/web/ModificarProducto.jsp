<%-- 
    Document   : ModificarProducto
    Created on : 26 nov 2023, 14:24:08
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
        <title>Modificar Producto</title>
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
        input[type="text"]{
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
        <h1>Modificar Producto</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarProducto">
            <div>
                <label>ID Producto:</label>
                <input type="text" name="idProducto" id="idProducto" value="${param.idProducto}" readonly /><br>
                <label>Nombre:</label>
                <input type="text" name="nombre" id="nombre" value="${param.nombre}" required /><br>
                <label>Descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br>
                <label>Precio:</label>
                <input type="text" name="precio" id="precio" value="${param.precio}" required /><br>
                <label>Stock:</label>
                <input type="text" name="stock" id="stock" value="${param.stock}" required /><br>       
                <br><input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el producto?')" />
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
