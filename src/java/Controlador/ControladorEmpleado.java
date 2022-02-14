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
public class ControladorEmpleado {
    
    Conexion a = new Conexion();
    
    public boolean InsertarEmpleado(String NUM_IDE,String TIPO_ID,String NOMBRES, String APELLIDO1, String APELLIDO2, String DIRECCION, String TELEFONO,
            String TIPO_EMPLE, String ESTADO, String VIGENCIA, String CARGO, String TIPO_CONTR, String SALARIO){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO EMPLE (NUM_IDE, TIPO_IDEN_ID_TIPO_ID, NOMBRES, APELLIDO_1, APELLIDO_2, DIRECCION, TELEFONO,\n" +
"            ID_TIPO_EMPLE, ID_ESTADO, VIGENCIA_CONTRATO, ID_CARGO, ID_CONTRA, SALARIO)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, NUM_IDE);
            pst.setString(2, TIPO_ID);
            pst.setString(3, NOMBRES);
            pst.setString(4, APELLIDO1);
            pst.setString(5, APELLIDO2);
            pst.setString(6, DIRECCION);
            pst.setString(7, TELEFONO);
            pst.setString(8, TIPO_EMPLE);
            pst.setString(9, ESTADO);
            pst.setString(10, VIGENCIA);
            pst.setString(11, CARGO);
            pst.setString(12, TIPO_CONTR);
            pst.setString(13, SALARIO);
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
    
    public boolean InsertarUsuario(String NUM_IDE, String PASSWORD){
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO usuarios (NAME, PASSWOR)VALUES(?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, NUM_IDE);
            pst.setString(2, PASSWORD);
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
    
    public boolean EditarEmpleado(String ID,String NOMBRES, String APELLIDO1, String APELLIDO2, String DIRECCION, String TELEFONO,
            String TIPO_EMPLE, String ESTADO, String VIGENCIA, String CARGO, String TIPO_CONTR, String SALARIO){
        PreparedStatement pst = null;
        try {
            String consulta = "UPDATE EMPLE SET NOMBRES=?, APELLIDO_1=?, APELLIDO_2=?, DIRECCION=?, TELEFONO=?, ID_TIPO_EMPLE=?, \n" +
"            ID_ESTADO=?, VIGENCIA_CONTRATO=?, ID_CARGO=?, ID_CONTRA=?, SALARIO=? WHERE ID_EMPLE=?";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, NOMBRES);
            pst.setString(2, APELLIDO1);
            pst.setString(3, APELLIDO2);
            pst.setString(4, DIRECCION);
            pst.setString(5, TELEFONO);
            pst.setString(6, TIPO_EMPLE);
            pst.setString(7, ESTADO);
            pst.setString(8, VIGENCIA);
            pst.setString(9, CARGO);
            pst.setString(10, TIPO_CONTR);
            pst.setString(11, SALARIO);
            pst.setString(12, ID);
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
