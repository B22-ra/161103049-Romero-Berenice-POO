<%-- 
    Document   : esfera
    Created on : 28-may-2020, 20:59:15
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>esfera</title>
        <style>
            body {background-color:powderblue;}
            h1 {color:pink; text-align:center; font-size:300%;}
            p{text-align:center; font-size:150%; color:white;}
            a {border: 5px solid pink; padding: 20px;}
        </style>
    </head>
    <body>
        <h1>Volumen de la esfera.</h1>
        <%
            if (request.getParameter("radio") != null) {
        %>
        <h3>El volumen de la esfera es: </h3>
        <%
            double radio = Integer.parseInt(request.getParameter("radio"));
            out.print((4.0 / 3) * Math.PI * Math.pow(radio, 3));
        %>
        <br><br><input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
        <%} else {%>
        <form> 
            Ingresa el valor del radio: <input type="number" name="radio" required min="0"/><br>
            <input type="submit" value="Calcular" />
            <input type="button" onclick="history.back()" name="volver atrás" value="Inicio">
        </form>
        
        <%}
        %>
    </body>
</html>
