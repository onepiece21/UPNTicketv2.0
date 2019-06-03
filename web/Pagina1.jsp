<%-- 
    Document   : Pagina1
    Created on : 23/04/2019, 09:36:57 AM
    Author     : Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/estilos_1.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Administradores</title>
        
            </head>
   
    <body>
      
        <%-- 
    Una vez que se logee, sera redireccionado a cierta pagina, como por ejemplo si es administrador lo trae aqui...
--%>
            <div id="contenedor">
            <div id="header">
                <jsp:include page="EstructuraPaginasJSP/cabezera.jsp" />
            </div>    
            <div id="menu">
                 <jsp:include page="EstructuraPaginasJSP/menu.jsp" />
            </div>
                <div id="cuerpo">
                    <jsp:include page="EstructuraPaginasJSP/cuerpo.jsp" />
                </div>
                <div id="footer">
                   <jsp:include page="EstructuraPaginasJSP/footer.jsp" /> 
                </div>
        </div>
</body>
</html>
