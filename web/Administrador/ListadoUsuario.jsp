<%-- 
    Document   : ListadoUsuario
    Created on : 24/05/2019, 10:55:39 PM
    Author     : Manuel
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <title>ListadoUsuario</title>
    </head>
    <body>
        <h1>LISTADO DE USUARIOS REGISTRADOS EN SISTEMA</h1>
        <p>Aqui se mostrara todo el personal que ya posea un usuario y contraseña, al momento de poser (Usuario y clave) se le considerara usuario del sistema.</p>
         <table border="1" width="100%">
        
            <tr>
                <th colspan="6">Mantenimiento de Usuario</th>
                
            </tr>
            <tr>
                <th>ID Usuario</th><th>Nombre Usuario</th>
                <th>Contraseña</th><th>ID Personal</th>
                <th>ID Nivel</th><th>Accion</th>
               
            </tr>
             
            <%
            Connection cnx=null;
            Statement sta=null;
            ResultSet rs=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection
                   ("jdbc:mysql://localhost/ticket?user=root&password=");
            
            sta=cnx.createStatement();
            rs=sta.executeQuery("select * from usuario");
            
            while(rs.next()){
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    
                <th>
                        <a href="EditarUsuario.jsp?cod=<%=rs.getString(1)%>">
                            <img src="iconos/edit.png" width="30" height="30"></a> |
                            <a href="EliminarUsuario.jsp?cod=<%=rs.getString(1)%>">
                            <img src="iconos/delete.png" width="30" height="30"></a>
                    </th>
                </tr>
                 <%
            }
        sta.close();
        rs.close();
        cnx.close();
            
            }catch(Exception e){}

            %>
            
        </table>
    </body>
</html>
