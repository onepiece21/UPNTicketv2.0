<%-- 
    Document   : menu
    Created on : 21/05/2019, 10:13:01 PM
    Author     : Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%> 
<!DOCTYPE html>
<%-- 
aca se tendra que modicar los id de los li para poder realizar los link con las distintas paginas, se tendra que tener al mano el JS de funciones.js
--%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
<%--estilos bootstrap menu --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%--Generar los link del menu para que cambie el DIV "cuerpo"--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript" src="JS/funciones.js"></script>

        </head>
    <body>
       <%
            HttpSession sesion = request.getSession();
            String usuario;
            String contra;
            String nivel;
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("nivel")!=null){
            usuario=sesion.getAttribute("user").toString();
            nivel = sesion.getAttribute("nivel").toString();
            
            
        %> 
        
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">UPN</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
          <li class="active"><a href="#" id="inicio">Inicio</a></li>
        <li><a href="#">Tickets</a></li>
        <li><a href="#">Consultas</a></li>
        <li><a href="#">Reportes</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%out.print("<span>" + usuario+"</span>");%> </a></li>
        <li>
                
                <%out.print("<a href='Index.jsp?cerrar=true'><span class='glyphicon glyphicon-log-in'></span></a>");%>
            
            </a></li>
      </ul>
        <%
           
        } else{
                out.print("<script>location.replace('Index.jsp');</script>");
            }
%>
    </div>
  </div>
</nav>
    </body>
</html>
