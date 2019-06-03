<%-- 
    Document   : ListadoPersonal
    Created on : 24/05/2019, 10:55:22 PM
    Author     : Manuel
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/table.css" rel="stylesheet" type="text/css"/>
        <title>ListadoPersonal</title>
    </head>
    <body>
              <h1>LISTADO DE PERSONAL REGISTRADO EN EL SISTEMA</h1>
              <P>Aqui se mostrara todo el personal que labora en la empresa.</P>
        
              <table role="table" width="100%">
                  <thead role="rowgroup">
            <tr role="row">
                <th colspan="10">Mantenimiento de Personal</th>
                
            </tr>
            <tr>
                <th role="columnheader">ID Personal</th><th role="columnheader">Nombre</th>
                <th role="columnheader">Apellidos</th><th role="columnheader">Nacionalidad</th>
                <th role="columnheader">Email</th><th role="columnheader">Dirección</th>
                <th role="columnheader">Telefono</th><th role="columnheader">Sexo</th>
                <th role="columnheader">Edad</th><th role="columnheader">Accion</th>
            </tr>
            </thead>
             <tbody role="rowgroup">
            <%
            Connection cnx=null;
            Statement sta=null;
            ResultSet rs=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection
                   ("jdbc:mysql://localhost/ticket?user=root&password=");
            
            sta=cnx.createStatement();
            rs=sta.executeQuery("select * from personal");
            
            while(rs.next()){
                %>
                <tr role="row">
                    <td role="cell"><%=rs.getString(1)%></td>
                    <td role="cell"><%=rs.getString(2)%></td>
                    <td role="cell"><%=rs.getString(3)%></td>
                    <td role="cell"><%=rs.getString(4)%></td>
                    <td role="cell"><%=rs.getString(5)%></td>
                    <td role="cell"><%=rs.getString(6)%></td>
                    <td role="cell"><%=rs.getString(7)%></td>
                    <td role="cell"><%=rs.getString(8)%></td>
                    <td role="cell"><%=rs.getString(9)%></td>
                    <th>
                        <a href="EditarPersonal.jsp?cod=<%=rs.getString(1)%>">
                            <img src="iconos/edit.png" width="30" height="30"></a> |
                            <a href="EliminarPersonal.jsp?cod=<%=rs.getString(1)%>">
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
        </tbody>     
        </table>
        
    </body>
</html>
