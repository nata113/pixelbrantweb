/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.util.Date;

/**
 *
 * @author luisa.jaramillo
 */
public class ControladorSala {
    Conexion a = new Conexion();
    
    public boolean InsertarSala(String NOMBRE_SALA, String UBICACION){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO sala (NOMBRE_SALA, UBICACION) VALUES(?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
           
            pst.setString(1, NOMBRE_SALA);
            pst.setString(2, UBICACION);
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
    
    public boolean ReservarSala(String IDE_NUM, String FECHA_INICIO,int ID_SALA, String FECHA_FIN){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO Reserva_sala (ID_EMPLE, FECHA_INICIO, ID_SALA, FECHA_FIN) VALUES(?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
            pst.setString(1, IDE_NUM);
            pst.setString(2, FECHA_INICIO);
            pst.setInt(3, ID_SALA);
            pst.setString(4, FECHA_FIN);
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
