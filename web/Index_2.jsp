<%-- 
    Document   : Index
    Created on : 23/04/2019, 09:35:49 AM
    Author     : Manuel
--%>
<%@page import="Login.ConexionUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Index</title>
    </head>
    <body>
        <h1>Inicio de Sesion</h1>
        <form action="Index.jsp" method="POST">    
        <input type="text" name="txtUsuario" placeholder="Usuario" minlength="4" maxlength="20" required><br>
        <input type="password"  name="txtContra" placeholder="Contraseña" minlength="1" required><br/>
        <input type="submit"  value="Enviar" name="btnIngresar">
    </form>
            <%
              ConexionUsuario op=new ConexionUsuario();
              if(request.getParameter("btnIngresar")!=null){
                String nombre=request.getParameter("txtUsuario");
                String contra=request.getParameter("txtContra");
                HttpSession sesion = request.getSession();
                switch(op.loguear(nombre, contra)){
                    case 1:
                        session.setAttribute("user", nombre);
                        session.setAttribute("nivel", 1);
                        response.sendRedirect("Pagina1.jsp");
                        break;
                    case 2:
                        session.setAttribute("user", nombre);
                        session.setAttribute("nivel", 2);
                        response.sendRedirect("Pagina2.jsp");
                        break; 
                    case 3:
                        session.setAttribute("user", nombre);
                        session.setAttribute("nivel", 3);
                        response.sendRedirect("Pagina3.jsp");
                        break;     
                    default:
                        out.write("Usuario no existe o Contraseña Invalida");
                        break;
                }
            }
              if(request.getParameter("cerrar")!=null){
                session.invalidate();
                  
              }
            %>   
 
    </body>
</html>
