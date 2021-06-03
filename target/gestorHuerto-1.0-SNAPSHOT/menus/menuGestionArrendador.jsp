<%-- 
    Document   : menuGestionAdmin
    Created on : 31-may-2021, 9:57:43
    Author     : Lidia Baixauli de la Villa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión arrendatario</title>
    </head>
    <body>
      
        <div class="flex  menuGestion">
            <div class="menuAdmin">
                <h3>Mi cuenta</h3>
                <img src="" alt="">
                
                <a class="noDisponible" href="#">Editar datos (No disponible)</a>
                
            </div>
            <div class="menuAdmin">
                <h3>Tablón de anuncios</h3>
                <a href="Controller?opID=MostrarTablon">Ver tablón de anuncios</a>
<!--                <a href="Controller?opID=editorTablon">Editar tablón de anuncios</a>-->
            </div>
        </div>
    </body>
</html>
