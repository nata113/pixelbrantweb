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
public class ControladorRegistroActividad {
    Conexion a = new Conexion();
    
    public boolean RegistrarActividad(String ID_CLIEN_SERVI , String ID_ACTIVI , String FECHA_INICIO, String FECHA_FIN, String EMPLE_NUM_IDE ){
        PreparedStatement pst = null;
        try {
            String consulta = "CALL REGISTRO_ACTIVIDAD (?,?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
           
            pst.setString(1, ID_CLIEN_SERVI);
            pst.setString(2, ID_ACTIVI);
            pst.setString(3, FECHA_INICIO);
            pst.setString(4, FECHA_FIN);
            pst.setString(5, EMPLE_NUM_IDE);
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
