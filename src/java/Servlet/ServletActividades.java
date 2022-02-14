/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.ControladorActividades;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luisa.jaramillo
 */
@WebServlet(name = "ServletActividades", urlPatterns = {"/ServletActividades"})
public class ServletActividades extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        try {
            if (opc.equals("GUARDAR")) {
                String NOMBRE = request.getParameter("txtNombre");
                String DESCRIPCION = request.getParameter("txtDescripcion");
                String ESTADO = request.getParameter("estado");
                Controlador.ControladorActividades co = new ControladorActividades();
                if (co.InsertarActividad(NOMBRE, DESCRIPCION, ESTADO)) {
                    response.sendRedirect("Actividades.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
                }
            } else if (opc.equals("EDITAR")) {
                String ID_ACTIVI = request.getParameter("txtide");
                String NOMBRE = request.getParameter("txtNombree");
                String DESCRIPCION = request.getParameter("txtDescripcione");
                String ESTADO = request.getParameter("estadoe");
                System.out.println(ID_ACTIVI);
                Controlador.ControladorActividades co = new ControladorActividades();
                if (co.EditarActividad(ID_ACTIVI, NOMBRE, DESCRIPCION, ESTADO)) {
                    response.sendRedirect("Actividades.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("NO EDITO");
                }
            }
        } finally {
            out.close();
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
