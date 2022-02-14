/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author NATALI
 */
public class ControladorAgenda {
    Conexion a = new Conexion();
    
    public boolean InsertarEvento(String TITLE, String DESCRIPTION, String START, String END){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO EVENTS (title,description, start, end) VALUES(?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
           
            pst.setString(1, TITLE);
            pst.setString(2, DESCRIPTION);
            pst.setString(3, START);
            pst.setString(4, END);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("ERROR" + e);
        } finally {
            try {

                if (a.getConexion() != null) {
                    a.getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }
    
    public boolean EditarEvento(String ID, String TITLE, String DESCRIPTION, String START, String END){
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE events SET title=?, description=?, start=?, end=? WHERE id=?";
            pst = a.getConexion().prepareStatement(consulta);
           
            pst.setString(1, TITLE);
            pst.setString(2, DESCRIPTION);
            pst.setString(3, START);
            pst.setString(4, END);
            pst.setString(5, ID);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("ERROR" + e);
        } finally {
            try {

                if (a.getConexion() != null) {
                    a.getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }
    
        public boolean EliminarEvento(String ID){
        PreparedStatement pst = null;
        try {
            String consulta = "delete from events WHERE id=?";
            pst = a.getConexion().prepareStatement(consulta);
           
            pst.setString(1, ID);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("ERROR" + e);
        } finally {
            try {

                if (a.getConexion() != null) {
                    a.getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }
}
