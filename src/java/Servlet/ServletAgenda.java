/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.ControladorAgenda;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NATALI
 */
@WebServlet(name = "ServletAgenda", urlPatterns = {"/ServletAgenda"})
public class ServletAgenda extends HttpServlet {

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
        String eli = request.getParameter("delete");
        try {
            if (opc.equals("GUARDAR")) {
                String TITLE = (request.getParameter("title"));
                String DESCRIPTION = (request.getParameter("description"));
                String START = request.getParameter("start");
                String END = request.getParameter("end");
                Controlador.ControladorAgenda co = new ControladorAgenda();
                if (co.InsertarEvento(TITLE, DESCRIPTION, START, END)) {
                    response.sendRedirect("Agenda.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
                }
            } else if (opc.equals("EDITAR")) {
                String ID = (request.getParameter("id"));
                String TITLEE = (request.getParameter("titlee"));
                String DESCRIPTIONE = (request.getParameter("descriptione"));
                String STARTE = request.getParameter("starte");
                String ENDE = request.getParameter("ende");
                Controlador.ControladorAgenda co = new ControladorAgenda();
                if (co.EditarEvento(ID, TITLEE, DESCRIPTIONE, STARTE, ENDE)) {
                    response.sendRedirect("Agenda.jsp");
                    System.out.println("LISTO");
                } else {
                    response.sendRedirect("index_1.html");
                    System.out.println("OK");
                }

            } else if (opc.equals("ELIMINAR")) {
                String ID = (request.getParameter("id"));   
                Controlador.ControladorAgenda co = new ControladorAgenda();
                if (co.EliminarEvento(ID)) {
                    response.sendRedirect("Agenda.jsp");
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
