/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hvale
 */
public class ServletPrincipal extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try (PrintWriter out = response.getWriter()) {
            String producto = request.getParameter("producto");

            if (producto != null && !producto.isEmpty()) {
                // Almacenar el productos
                HttpSession session = request.getSession(true);
                if (session.getAttribute("productos") == null) {
                    session.setAttribute("productos", new StringBuilder());
                }
                StringBuilder productos = (StringBuilder) session.getAttribute("productos");
                productos.append(producto).append("<br>");

                // Mensaje de registro exitoso
                out.println("<p>Registro exitoso de: " + producto + "</p>");
            } else {
                out.println("<p>Envío de producto exitoso</p>");
            }
            // Productos agregados
            HttpSession session = request.getSession(false);
            if (session != null) {
                StringBuilder productos = (StringBuilder) session.getAttribute("productos");
                if (productos != null && productos.length() > 0) {
                    String[] listaProductos = productos.toString().split("<br>");
                    out.println("<h2>Productos Agregados:</h2>");
                    out.println("<table border='1'>");
                    out.println("<tr><th>Productos</th></tr>");
                    for (String prod : listaProductos) {
                        out.println("<tr><td>" + prod + "</td></tr>");
                    }
                    out.println("</table>");
                } else {
                    out.println("<p>No hay productos agregados.</p>");
                }
            } else {
                out.println("<p>No hay productos agregados.</p>");
            }
            // Volver al formulario
            out.println("<p><a href='index.html'>Volver al formulario principal</a></p>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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
