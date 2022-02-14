package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author luisa.jaramillo
 */
public class Conexion {    
    public Connection con;

    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_a843b826cdcfda0","b458be41544c88","9d5076ed");
        } catch (Exception ex) {
            System.err.println("Error:" +ex);
        }
    }
    
    public Connection getConexion(){
    try {
            String url = "jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_a843b826cdcfda0";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,"b458be41544c88","9d5076ed");
            
            return con;
        } catch (SQLException ex) {
            System.err.println("Error:" +ex);
            JOptionPane.showMessageDialog(null,"No se pudo realizar conexión");
        }catch(ClassNotFoundException ex){
            System.err.println("Error:" +ex);
            JOptionPane.showMessageDialog(null,"No se pudo registrar el Driver");
            return null;
        }
        return con;
    }
    
    public static void main(String[] args){
    Conexion cn = new Conexion();
    Statement st;
    ResultSet rs;
        try {
            st=cn.con.createStatement();
            rs=st.executeQuery("select * from USUARIOS where NAME = " +43519009+ "and  PASSWOR= "+2107);
            while (rs.next()) {
                System.out.println(rs.getString("name"));
            }
            cn.con.close();
        } catch (Exception e) {
            e.getMessage();
        }
    }
    
}