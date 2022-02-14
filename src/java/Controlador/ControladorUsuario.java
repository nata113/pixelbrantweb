/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author hp
 */
public class ControladorUsuario {
    Conexion a = new Conexion();

    public boolean insertarUsuario(String ID_USUARIO, String NOMBRE, String APELLIDO, String PERFIL, String CORREO, String NOMBRE_USUARIO, String CONTRASEÑA) {
        PreparedStatement pst = null;
        try {
            String consulta = "INSERT INTO USUARIO (ID_USUARIO, NOMBRE, APELLIDO, PERFIL, CORREO, NOMBRE_USUARIO, CONTRASEÑA)VALUES(?,?,?,?,?,?,?)";
            pst = a.getConexion().prepareStatement(consulta);
            pst.setString(1, ID_USUARIO);
            pst.setString(2, NOMBRE);
            pst.setString(3, APELLIDO);
            pst.setString(4, PERFIL);
            pst.setString(5, CORREO);
            pst.setString(6, NOMBRE_USUARIO);
            pst.setString(7, CONTRASEÑA);
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