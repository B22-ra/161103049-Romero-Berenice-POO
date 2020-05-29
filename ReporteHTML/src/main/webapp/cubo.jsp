<%-- 
    Document   : cubo
    Created on : 28-may-2020, 21:11:14
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cubo</title>
        <style>
            body {background-color:powderblue;}
            h1 {color:pink; text-align:center; font-size:300%;}
            p{text-align:center; font-size:150%; color:white;}
            a {border: 5px solid pink; padding: 20px;}
        </style>
    </head>
    <body>
        <h1>Volumen del cubo.</h1>
        <%
            if (request.getParameter("lado") != null) {
        %>
        <h3>El volumen del cubo es: </h3>
        <%
            double lado = Integer.parseInt(request.getParameter("lado"));
            out.print(Math.pow(lado, 3));
        %>
        <br><br><input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
        <%} else {%>
        <form> 
            Ingresa el valor del lado: <input type="number" name="lado" required min="0"/><br>
            <input type="submit" value="Calcular" />
            <input type="button" onclick="history.back()" name="volver atrás" value="Inicio">
        </form>
        
        <%}
        %>
    </body>
</html>
