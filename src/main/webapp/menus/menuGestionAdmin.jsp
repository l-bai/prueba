<%-- 
    Document   : menuGestionAdmin
    Created on : 31-may-2021, 9:57:43
    Author     : Lidia Baixauli de la Villa
--%>

<%@page import="Entidades.Parcela"%>
<%@page import="Entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión administrador</title>
    </head>
    <body>-->
          <!--si viene de dar de alta ok-->
        <% 
            Usuario user = (Usuario)request.getAttribute("altaOk");
            String parcela = (String)request.getAttribute("asignaParceOk");
            if(user!=null){
        %>
            <p class="exito">Usuario <%=user.getEmail()%> registrado con éxito</p>
        <%
            }
            if(parcela!=null){
           %>
            <p class="exito">Parcela <%=parcela%> asignada al usuario con éxito</p>
        <%
            }

        %>
        
        <!--resultados de la baja -->
<!--        pacelaLibre-->
        <% Parcela parcelaLibre = (Parcela)request.getAttribute("pacelaLibre");
            String bajaOk = (String)request.getAttribute("bajaOk");
            Parcela parcelaError = (Parcela)request.getAttribute("errorDesasigna");
            String errorBaja = (String)request.getAttribute("errorBaja");
            if(parcelaLibre!=null){
        %>
            <p class="exito">La parcela <%=parcelaLibre.getId()%> está libre</p>
        <%
            }
            if(bajaOk!=null){
           %>
            <p class="exito">El usuario <%=bajaOk%> ha sido eliminado con éxito</p>
        <%
            }if(parcelaError!=null){
        %>
            <p class="error">La parcela <%=parcelaError.getId()%> no se ha desasignado.</p>
        <%
            }if(errorBaja!=null){
        %>
            <p class="error">El usuario <%=errorBaja%> no se ha eliminado.</p>
        <%
            }    
        %>
        
        <div class="flex menuGestion">
            <div class="menuAdmin">
                <h3>Usuarios</h3>
                <img src="" alt="">
                <a href="Controller?opID=AltaUsuario">Alta nueva</a>
                <a href="Controller?opID=BajaUsuario">Baja</a>
                <a href="Controller?opID=ListarUsuarios">Listar usuarios</a>
            </div>
            <div class="menuAdmin">
                <h3>Tablón de anuncios</h3>
                <a href="Controller?opID=MostrarTablon">Ver tablón de anuncios</a>
                <a href="Controller?opID=EditarTablon">Editar tablón de anuncios</a>
            </div>
        </div>
<!--    </body>
</html>-->
