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
public class ControladorActividades {
    Conexion a = new Conexion();
    
    public boolean InsertarActividad(String NOMBRE, String DESCRIPCION, String ESTADO){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO ACTIVI (NOMBRE_ACTIVIDAD, DESCRIPCION, ID_ESTADO) VALUES(?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            
            pst.setString(1, NOMBRE);
            pst.setString(2, DESCRIPCION);
            pst.setString(3, ESTADO);
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
    
    
    public boolean EditarActividad(String ID_ACTIVI, String NOMBRE, String DESCRIPCION, String ESTADO){
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE ACTIVI SET NOMBRE_ACTIVIDAD=?, DESCRIPCION=?, ID_ESTADO=? WHERE ID_ACTIVI=?";
            pst = a.getConexion().prepareStatement(consulta);
            
            pst.setString(1, NOMBRE);
            pst.setString(2, DESCRIPCION);
            pst.setString(3, ESTADO);
            pst.setString(4, ID_ACTIVI);
            if (pst.executeUpdate() > 0) {
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
    
    public static void main(String[] args) {
        ControladorActividades con = new ControladorActividades();
        boolean resultado;
        resultado = con.EditarActividad("45556", "Crear pauta", "Descripcionnueva", "1");
        System.out.println(resultado);
    }
    
}
