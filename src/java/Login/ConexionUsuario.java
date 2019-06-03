/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.sql.*;


/**
 *
 * @author Manuel
 */
public class ConexionUsuario {
    String driver;
 String url;
 String uss;
 String contra;

    
   public ConexionUsuario(){
       driver="com.mysql.jdbc.Driver";
       url="jdbc:mysql://localhost:3306/ticket";
       uss="root";
       contra="";
   }   
   public int loguear(String us, String pass){
      com.mysql.jdbc.Connection conn;
       com.mysql.jdbc.PreparedStatement pst;
       ResultSet rs;
       int cont=0;
       int nivel =0;
       String sql="select idNivel from usuario where nomUsuario='" + us + "' and contraseña='" + pass + "'";
       try {
           Class.forName(this.driver);
           conn=(com.mysql.jdbc.Connection) DriverManager.getConnection(
           this.url,
           this.uss,
           this.contra
           );
           pst=(com.mysql.jdbc.PreparedStatement) conn.prepareStatement(sql);
           rs=pst.executeQuery();
           while(rs.next()){
               nivel = rs.getInt(1);
               
           }
           conn.close();
       } catch (ClassNotFoundException | SQLException e) {
       }
       return nivel;
   } 
}
