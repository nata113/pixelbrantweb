/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hp
 */
public class ConsultaInicio extends Conexion{
     Conexion a = new Conexion();
     public boolean autenticacion(String usuario, String contraseña){
        PreparedStatement pst = null;
        ResultSet rspor = null;
        try {
            String consulta = "select * from USUARIOS where NAME = ? and  PASSWOR= ?";
            pst = getConexion().prepareStatement(consulta, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rspor = pst.executeQuery();
            
            if(rspor.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.println("ERROR" + e);
        }finally{
            try {
                if(getConexion() != null) getConexion().close();
                if(pst != null)pst.close();
                if(rspor != null) rspor .close();     
            } catch (Exception e) {
                System.err.println("Error" + e);
            }
        }
        return false;
     }
     
      public boolean autent(String usuario){
        PreparedStatement pst = null;
        try {
            String consulta = "CALL USUARIO_SESION(?)";
            pst = a.getConexion().prepareStatement(consulta);
           
            pst.setString(1, usuario);
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

