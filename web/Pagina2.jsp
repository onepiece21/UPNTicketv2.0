<%-- 
    Document   : pagina2
    Created on : 23/04/2019, 09:37:15 AM
    Author     : Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Analistas</title>
    </head>
    <body>
        <%-- 
    Por ser numero 2 (nivel) lo manda aqui...
--%>
            <div id="contenedor">
            <div id="header">
                <jsp:include page="EstructuraPaginasJSP/cabezera.jsp" />
            </div>    
            <div id="menu">
                 <jsp:include page="EstructuraPaginasJSP/menu_1.jsp" />
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
