package Servlet;

import Controlador.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modal.CalendarDTO;
import com.google.gson.Gson;

@WebServlet(name = "CalendarJsonServlet", urlPatterns = {"/CalendarJsonServlet"})
public class CalendarJsonServlet extends HttpServlet {
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            List progs = new ArrayList();
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pixel_brant", "root", "");
            ResultSet rs = con.createStatement().executeQuery("SELECT `id`, `title`, `description`, `start`, `end` FROM `events`");
            
            while (rs.next()) {
                CalendarDTO pb = new CalendarDTO();
                pb.setId(Integer.parseInt(rs.getString(1)));
                pb.setTitle(rs.getString(2));
                pb.setDescription(rs.getString(3));
                pb.setStart(rs.getString(4));
                pb.setEnd(rs.getString(5));
                
                progs.add(pb);
                
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.write(new Gson().toJson(progs));
            
           
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CalendarJsonServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CalendarJsonServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
