
<%@page import="DAO.Conexion_DB"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Huerto Mandroca</title>
        <!--<link rel="stylesheet" type="text/css" href="style.css"/>-->
        <link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
         <!--FUENTES GOOGLE-->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Dosis&family=Roboto&display=swap" rel="stylesheet">
       
    </head>
    <body>
    <!--        bienvenida-->
        <div class="flex" id="indice">
            <div>
                 <h1>Huerto Mandroca</h1>
                 <h3>Nuestro huerto ubicado en Camino x s/n, cerca de la ciudad, lejos del ruido</h3>
                 <p>Rooster celery pineapples fertilizer, a melon chirp pets in. Kidney beans ostrich trucks. Brussel sprouts cow, rabbits a gates a, storage shed fences. Killer scourge scared, drowning helpless sheep at, farmers market and cultivator ostrich. Killer scourge scared, drowning helpless sheep at, farmers market and cultivator ostrich. Gobble feed, jelly peppers at plo.</p>

                 <p>Basil swather, cat weathervane grain trucks, hoot pony robins peacocks an kale. Peacocks baa ostriches owls. Pick up truck livestock, pets and storage shed, troughs feed bale manure, is garden wheat oats at augers. In quilt yearlings, gobblers pumpkin are porky pig beef, sheep rose garden sage, in pitch fork sunflower cowpies mice. House hen chinchillas in barn livestock cat hogs chicks trucks. Oranges cucumbers rhubarb gourds watermelon.</p>
            </div>
            <div>
<!--                caja login-->
                <form action="Controller?opID=Login" method="POST">
                    
                    <div class="camposForm">
                        <label for="email">Email*</label>
                        <input type="text" name="email">
                    </div>
                    <div class="camposForm">
                        <label for="pass">Contrase??a</label>
                        <input type="password" name="pass"/>
                    </div>
                    <input class="centrado" type="submit" value="Login">
                </form>
<!--                mensaje error login-->
                <% 
                    String error = (String)request.getAttribute("errorLog");
                    if(request.getAttribute("errorLog")!=null){
                %> 
                <p class="error">Login incorrecto</p>
                 <%    
                    }
                %>    
            </div>

        </div>
        
    </body>
</html>
