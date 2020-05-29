<%-- 
    Document   : Index
    Created on : 28-may-2020, 18:43:21
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Configuración de la ventana gráfica para que se vea bien en todos los dispositivos.-->
        <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1.0"; charset=UTF-8">
        <!--Titulo de la pagina.-->
        <title>Reporte de HTML</title>
        <style>
            body {background-color:powderblue;}
            h1 {color:pink; text-align:center; font-size:300%;}
            p{text-align:center; font-size:150%; color:white;}
        </style>
    </head>
    <body>
        <h1>Calcula el volumen.</h1>
        <p>A través de esta calculadora, 
            podrás obtener el resultado para cada figura, 
            usando la formula correspondiente.<br>Pincha a continuación en la forma geométrica 
            que necesites:</p><br>
        <ul> 
            <li><a href="esfera.jsp">Esfera.</a></li>
            <li><a href="cubo.jsp">Cubo.</a></li>
            <li><a href="cilindro.jsp">Cilindro.</a></li>
            <li><a href="piramide.jsp">Piramide.</a></li>
        </ul>
    </body>
</html>
