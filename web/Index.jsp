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
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <script src="JS/jsmenu.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.min.js"></script>
        <title>Index</title>
    </head>
    <body>
        
        <div class="page">
  <div class="container">
    <div class="left">
      <div class="login">Login</div>
      <div class="eula">Al iniciar sesión, acepta los términos proporcionados por la empresa...</div>
    </div>
    <div class="right">
      <svg viewBox="0 0 320 300">
        <defs>
          <linearGradient
                          inkscape:collect="always"
                          id="linearGradient"
                          x1="13"
                          y1="193.49992"
                          x2="307"
                          y2="193.49992"
                          gradientUnits="userSpaceOnUse">
            <stop
                  style="stop-color:#ff00ff;"
                  offset="0"
                  id="stop876" />
            <stop
                  style="stop-color:#ff0000;"
                  offset="1"
                  id="stop878" />
          </linearGradient>
        </defs>
        <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
      </svg>
      <div class="form">
          <form action="Index.jsp" method="POST">
              <select name="cmbop">
                  <option value="1">Admin</option>
                  <option value="2">Analista</option>
              </select>
        <label for="email">Usuario</label>
        <input type="text" name="txtUsuario" required>
        <label for="password">Contraseña</label>
        <input type="password"  name="txtContra" required>
        <input type="submit"  value="Enviar" name="btnIngresar">
          </form>
      </div>
    </div>
  </div>
</div>
        
        
       
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
