

$(document).ready(function(){
/* #inicio, es igual al nombre del "id" de los "li" del menu y cuando dea click se activa la funcion */
    $("#inicio").click(function(){
/* Ahora el #cuerpo (es el cuerpo de la pagina que va cambiar cuando dea click segun la opcion en este caso sera el cuerpo principal)
 y de ahi pasa al load donde va traer la pagina y poder reemplzar al cuerpo*/        
    $("#cuerpo").load("EstructuraPaginasJSP/cuerpo.jsp");            
  }); 
  $("#pag1").click(function(){
    $("#cuerpo").load("Administrador/ListadoPersonal.jsp");            
  });
  
    $("#pag2").click(function(){
    $("#cuerpo").load("Administrador/ListadoUsuario.jsp");            
  });
});


