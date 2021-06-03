<%-- 
    Document   : verTablon
    Created on : 31-may-2021, 12:57:02
    Author     : Lidia Baixauli de la Villa
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tablon Anuncios</title>
        <script src="http://code.jquery.com/jquery-latest.js">

        </script>
        <script>
            $(document).ready(function() {
                
		$('span').on('click',function(event) {
                    var li = $(this).parent();
                    var elemento = $(this).parent().attr('id');	
                    //alert(elemento);

                    $.ajax({  
                        type: "POST",  
                        url: "../Controller?opID=EliminarHorario",  
                        data: "elemento="+elemento 

                      }).done(function (Response) {
                          //si todo va bien borra el link
                          
                          li.remove();
                          $('#infoHorario').html("Horario eliminado con éxito");
                          if($('.exito')){$('.exito').remove();}
                    })
                    .fail(function (Response) {
               
                    });
                          
		});//fin eliminar
                
               
            });
            
            
        </script>
        
    </head>
    <body>
        <h2>Tablón de anuncios</h2>
        <h3>Consulta aquí toda la información de nuestro huerto</h3>
        <div id="riego">
            <h4>Horarios de riego</h4>
            <% List listaHorarios = (List) request.getAttribute("listaHorarioRiego");
            if(listaHorarios.size()==0){            
            %>
            <p class="error">Actualmente no hay horarios de riego</p>
            <%
            }else{
            %>
            <ul id="listaRiego">
                <%      
                for ( int i=0;i<listaHorarios.size();i++){
                    Horario horario = (Horario)listaHorarios.get(i);                          
                %>    
                <li id="<%=horario.getId()%>"><%=horario.getDescripcion()%><span> Eliminar</span></li>
                
             <%}%>   
            </ul>
            <%}%>
            
            
        
        <!--formulario para añadir horarios "-->
        <form name="formAlta" action="Controller?opID=AddHorarioRiego" method="POST">
            <div class="camposForm">
                <label for="horario">Nuevo horario</label>
                <input type="text" name="horario" id="horario" required/>                    
            </div>   
            <input type="submit" value="Añadir horario">
        </form>
        <p id="infoHorario"></p>
        
        <%if(request.getAttribute("addRiegoOk")!=null){
        %>
            <p class="exito">Nuevo horario de riego añadido</p>
        <%}
        if(request.getAttribute("errorAddRiego")!=null){
        %>
            <p class="error">No se ha añadido el horario</p>
        <%} %>
        
        </div>
    </body>
</html>
