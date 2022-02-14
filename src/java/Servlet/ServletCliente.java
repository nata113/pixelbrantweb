/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.ControladorCliente;
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
@WebServlet(name = "ServletCliente", urlPatterns = {"/ServletCliente"})
public class ServletCliente extends HttpServlet {

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
                String NIT = (request.getParameter("txtNIT"));
                String NOMBRE = request.getParameter("txtNombre");
                String RAZON_SOCIAL = request.getParameter("txtRazon");
                String TEL = request.getParameter("txtTel");
                String ESTADO = request.getParameter("txtEstado");              
                Controlador.ControladorCliente co = new ControladorCliente();
                if (co.InsertarCliente( NIT, NOMBRE, RAZON_SOCIAL, TEL, ESTADO)) {
                    response.sendRedirect("Cliente.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
                }
            } else if(opc.equals("EDITAR")){
                String ID_CLIEN = (request.getParameter("txtID"));
                String NOMBRE = request.getParameter("txtNombree");
                String RAZON_SOCIAL = request.getParameter("txtRazone");
                String TEL = request.getParameter("txtTele");
                String ESTADO = request.getParameter("txtEstadoe");  
                Controlador.ControladorCliente co = new ControladorCliente();
                if (co.EditarCliente( ID_CLIEN, NOMBRE, RAZON_SOCIAL, TEL, ESTADO)) {
                    response.sendRedirect("Cliente.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
                }
            
            } else if(opc.equals("ASIGNAR")){
                String ID_CLIEN = (request.getParameter("txtCliente"));
                String ID_SERVICIO = request.getParameter("txtServicio");
                String VAL_HORA = request.getParameter("txtValhora");
                String ESTADO = request.getParameter("txtEstadoA");  
                Controlador.ControladorCliente co = new ControladorCliente();
                if (co.AsignarServicio(ID_CLIEN, ID_SERVICIO, VAL_HORA, ESTADO)) {
                    response.sendRedirect("Cliente.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
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