<%-- 
    Document   : verTablon
    Created on : 31-may-2021, 12:57:02
    Author     : Lidia Baixauli de la Villa
--%>

<%@page import="Entidades.Horario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tablon Anuncios</title>
     
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
            <ul>
            <%      
                for ( int i=0;i<listaHorarios.size();i++){
                    Horario horario = (Horario)listaHorarios.get(i);                          
            %>    
            <li><%=horario.getDescripcion()%></li>
                
             <%}%>   
            </ul>
            <%}%>
        </div>
    </body>
</html>
