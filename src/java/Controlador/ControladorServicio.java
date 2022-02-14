/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author luisa.jaramillo
 */
public class ControladorServicio {
    Conexion a = new Conexion();
    
    public boolean InsertarServicio(String NOMBRE, String DESCRIPCION){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO SERVICIOS (NOMBRE_SERVICIO, DESCRIPCION)VALUES(?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, NOMBRE);
            pst.setString(2, DESCRIPCION);
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
    
    public boolean EditarServicio(String ID,String NOMBRE, String DESCRIPCION){
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE SERVICIOS SET NOMBRE_SERVICIO=?, DESCRIPCION=? WHERE ID_SERVICIO=?";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, NOMBRE);
            pst.setString(2, DESCRIPCION);
            pst.setString(3, ID);
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
