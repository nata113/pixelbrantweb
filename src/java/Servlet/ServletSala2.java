/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.ControladorSala;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NATALI
 */
@WebServlet(name = "ServletSala2", urlPatterns = {"/ServletSala2"})
public class ServletSala2 extends HttpServlet {

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
        String opc = request.getParameter("opc");

        try {
            if (opc.equals("GUARDAR")) {
                String NOMBRE_SALA = (request.getParameter("txtNomSala"));
                String UBICACION = request.getParameter("txtUbicacion");
                Controlador.ControladorSala co = new ControladorSala();
                if (co.InsertarSala(NOMBRE_SALA, UBICACION)) {
                    response.sendRedirect("Sala2.jsp");
                } else {
                    response.sendRedirect("index.jsp");
                }
            } else if (opc.equals("RESERVAR")) {
                String ID = (request.getParameter("txtSala"));
                int ID_SALA = Integer.parseInt(ID);
                String ID_ENCARGADO = request.getParameter("txtEncargado");
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String FECHAINI = request.getParameter("fechainicio");
                String FECHAF = request.getParameter("fechafin");
                
                Controlador.ControladorSala co = new ControladorSala();
                if (co.ReservarSala(ID_ENCARGADO, FECHAINI, ID_SALA, FECHAF)) {
                    response.sendRedirect("Sala2.jsp");
                } else {
                    response.sendRedirect("index.jsp");
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
