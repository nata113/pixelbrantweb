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
public class ControladorCliente {
    Conexion a = new Conexion();
    
    public boolean InsertarCliente(String NIT, String NOMBRE, String RAZON_SOCIAL, String TELEFONO, String ESTADO){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO CLIENTE (NIT, NOMBRE, RAZON_SOCIAL, TELEFONO, ID_ESTADO) VALUES(?,?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
           
            pst.setString(1, NIT);
            pst.setString(2, NOMBRE);
            pst.setString(3, RAZON_SOCIAL);
            pst.setString(4, TELEFONO);
            pst.setString(5, ESTADO);
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
    
    public boolean EditarCliente(String ID_CLIEN, String NOMBRE, String RAZON_SOCIAL, String TELEFONO, String ESTADO){
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE CLIENTE SET NOMBRE=?, RAZON_SOCIAL=?, TELEFONO=?, ID_ESTADO=? WHERE ID_CLIEN=?";
            pst = a.getConexion().prepareStatement(consulta);
           
            pst.setString(1, NOMBRE);
            pst.setString(2, RAZON_SOCIAL);
            pst.setString(3, TELEFONO);
            pst.setString(4, ESTADO);
            pst.setString(5, ID_CLIEN);
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
    
    public boolean AsignarServicio(String ID_CLIEN, String ID_SERVICIO, String HORA_VALOR, String ID_ESTADO){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO CLIEN_SERVI (ID_CLIEN, ID_SERVICIO, VALOR_HORA, ID_ESTADO) VALUES(?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
           
            pst.setString(1, ID_CLIEN);
            pst.setString(2, ID_SERVICIO);
            pst.setString(3, HORA_VALOR);
            pst.setString(4, ID_ESTADO);
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
