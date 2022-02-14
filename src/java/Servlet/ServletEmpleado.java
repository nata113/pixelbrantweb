/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.ControladorEmpleado;
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
@WebServlet(name = "ServletEmpleado", urlPatterns = {"/ServletEmpleado"})
public class ServletEmpleado extends HttpServlet {

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
                String TipoID = (request.getParameter("TipoID"));
                String ID = (request.getParameter("txtID"));
                String NOMBRES = request.getParameter("txtNombre");
                String APELLIDO1 = request.getParameter("txtApellido1");
                String APELLIDO2 = request.getParameter("txtApellido2");
                String DIRE = request.getParameter("txtDire");
                String TEL = request.getParameter("txtTel");
                String TIPO_EM = request.getParameter("tipo_emp");
                String ESTADO = request.getParameter("estado");
                String VIGE = request.getParameter("txtVig");
                String CARGO = request.getParameter("Cargo");
                String TIPO_CON = request.getParameter("tipo_cont");
                String SALARIO = request.getParameter("txtSala");
                String CONTRA = request.getParameter("txtContra");
                Controlador.ControladorEmpleado co = new ControladorEmpleado();
                if ((co.InsertarEmpleado(ID, TipoID, NOMBRES, APELLIDO1, APELLIDO2, DIRE, TEL, TIPO_EM, ESTADO, VIGE, 
                        CARGO,TIPO_CON, SALARIO)) && (co.InsertarUsuario(ID, CONTRA))) {
                    response.sendRedirect("Empleado.jsp");
                } else {
                    response.sendRedirect("index_1.html");
                }
            }else if(opc.equals("EDITAR")) {
                String ID = (request.getParameter("txtIDEMPLE"));
                String NOMBRES = request.getParameter("txtNombree");
                String APELLIDO1 = request.getParameter("txtApellido1e");
                String APELLIDO2 = request.getParameter("txtApellido2e");
                String DIRE = request.getParameter("txtDiree");
                String TEL = request.getParameter("txtTele");
                String TIPO_EM = request.getParameter("tipo_empe");
                String ESTADO = request.getParameter("estadoe");
                String VIGE = request.getParameter("txtVige");
                String CARGO = request.getParameter("Cargoe");
                String TIPO_CON = request.getParameter("tipo_conte");
                String SALARIO = request.getParameter("txtSalae");
                Controlador.ControladorEmpleado co = new ControladorEmpleado();
                if (co.EditarEmpleado(ID, NOMBRES, APELLIDO1, APELLIDO2, DIRE, TEL, TIPO_EM, ESTADO, VIGE, 
                        CARGO,TIPO_CON, SALARIO)) {
                    response.sendRedirect("Empleado.jsp");
                } else {
                    response.sendRedirect("index_1.html");
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
