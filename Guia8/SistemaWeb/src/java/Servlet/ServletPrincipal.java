/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.ViewModelEmpleados;
/**
 *
 * @author hvale
 */
public class ServletPrincipal extends HttpServlet {

    //Agregar de acuerdo a la base de datos FerreteriaBD
    private final String usuario = "login_adm_juanrodas";
    private final String contrasenia = "root";
    private final String servidor = "localhost:1433";
    private final String bd = "FerreteriaBD";
    
    String url = "jdbc:sqlserver://"
            + servidor
            + ";databaseName=" + bd
            + ";user=" + usuario
            + ";password=" + contrasenia
            + ";encrypt=false;trustServerCertificate=false;";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Empleados";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleados empleado = new ViewModelEmpleados();
                    empleado.setiDEmpleado(rs.getInt("iDEmpleado"));
                    empleado.setNombre(rs.getString("nombre"));
                    empleado.setApellido(rs.getString("apellido"));
                    empleado.setdUI(rs.getInt("dUI")); 
                    empleado.setiSSS(rs.getInt("iSSS"));
                    empleado.setFechadeNacimiento(rs.getDate("fechadeNacimiento"));
                    empleado.setTelefono(rs.getString("telefono"));
                    empleado.setEmail(rs.getString("email"));
                    empleado.setGenero(rs.getString("genero"));
                    empleado.setiDCargo(rs.getInt("iDCargo"));
                    empleado.setiDDireccion(rs.getInt("iDDireccion"));
                    listaEmpleados.add(empleado);
                }               
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dUI = request.getParameter("dUI");
        String iSSS = request.getParameter("iSSS");
        String fechadeNacimiento = request.getParameter("fechadeNacimiento");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String genero = request.getParameter("genero");
        String iDCargo = request.getParameter("iDCargo");
        String iDDireccion = request.getParameter("iDDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, nombre);
                pstmt.setString(2, apellido);                
                pstmt.setString(3, dUI);
                pstmt.setString(4, iSSS);
                pstmt.setString(5, fechadeNacimiento);
                pstmt.setString(6, telefono);
                pstmt.setString(7, email);
                pstmt.setString(8, genero);
                pstmt.setString(9, iDCargo);
                pstmt.setString(10, iDDireccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
        public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        
        String iDEmpleado = request.getParameter("iDEmpleado");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dUI = request.getParameter("dUI");
        String iSSS = request.getParameter("iSSS");
        String fechadeNacimiento = request.getParameter("fechadeNacimiento");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String genero = request.getParameter("genero");
        String iDCargo = request.getParameter("iDCargo");
        String iDDireccion = request.getParameter("iDDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Empleados set "
                 + "Nombre='"+nombre+"', "
                 + "Apellido='"+apellido+"', "
                 + "DUI='"+dUI+"', "
                 + "ISSS='"+iSSS+"', "
                 + "FechadeNacimiento='"+fechadeNacimiento+"', "
                 + "Telefono='"+telefono+"', "
                 + "Email='"+email+"', "
                 + "Genero='"+genero+"', "       
                 + "IDCargo='"+iDCargo+"', "
                 + "IDDireccion='"+iDDireccion+"'" 
                 + "where IDEmpleado='"+iDEmpleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    //Funciones de eliminacion de registros (DELETE)
        public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String iDEmpleado = request.getParameter("iDEmpleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Empleados where IDEmpleado='" + iDEmpleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }else if (accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }else if (accion.equals("AgregarEmpleados")){
            request.getRequestDispatcher("/RegistroEmpleados.html").forward(request, response);
        }else if (accion.equals("AgregarClientes")){
            request.getRequestDispatcher("/RegistroClientes.html").forward(request, response);
        }else if (accion.equals("AgregarProductos")){
            request.getRequestDispatcher("/RegistroProductos.html").forward(request, response);
        }else if (accion.equals("AgregarVentas")){
            request.getRequestDispatcher("/RegistroVentas.html").forward(request, response);
        }else if (accion.equals("AgregarProveedores")){
            request.getRequestDispatcher("/RegistroProveedores.html").forward(request, response);
        }else if(accion.equals("GestionarEmpleados")){
            mostrarEmpleados(request,response);
            request.getRequestDispatcher("/GestionarEmpleados.jsp").forward(request,response);
        }else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("/AgregarEmpleado.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion.equals("Login")){
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");
            try(PrintWriter print= response.getWriter()){
                if (usuario.equals("admin")&& contrasenia.equals("root")){
                    request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);
                }else {
                    print.println("<DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Sistema de FerreteriaBD</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h1>Error: El usuario o la contraseña son erroneos.</h1>");
                    print.println("</body>");
                    print.println("</html>");
                } 
            }
            //CAPTURA DE DATOS ENVIADOS POR POST
        } if (accion.equals("AgregarEmpleado")) {
            //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarEmpleado(request, response);
            //REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        } else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
