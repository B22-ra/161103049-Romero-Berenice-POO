<%-- 
    Document   : cilindro
    Created on : 28-may-2020, 21:11:46
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cilindro</title>
        <style>
            body {background-color:powderblue;}
            h1 {color:pink; text-align:center; font-size:300%;}
            p{text-align:center; font-size:150%; color:white;}
            a {border: 5px solid pink; padding: 20px;}
        </style>
    </head>
    <body>
        <h1>Volumen de un cilindro</h1>
        <%
            if (request.getParameter("radio") != null&&request.getParameter("altura") != null) {
        %>
        <h3>El volumen del cubo es: </h3>
        <%
            double radio = Integer.parseInt(request.getParameter("radio"));
            double altura = Integer.parseInt(request.getParameter("altura"));
            out.print(Math.PI*(radio*radio)*altura);
        %>
        <br><br><input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
        <%} else {%>
        <form> 
            Ingresa el valor del radio: <input type="number" name="radio" required min="0"/><br>
            Ingresa el valor de la altura: <input type="number" name="altura" required min="0"/><br>
            <input type="submit" value="Calcular" />
            <input type="button" onclick="history.back()" name="volver atrás" value="Inicio">
        </form>
        
        <%}
        %>
    </body>
</html>
