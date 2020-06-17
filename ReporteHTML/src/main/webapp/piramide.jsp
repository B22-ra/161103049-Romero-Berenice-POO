<%-- 
    Document   : piramide
    Created on : 28-may-2020, 21:12:10
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>piramide triangular</title>
        <style>
            body {background-color:powderblue;}
            h1 {color:pink; text-align:center; font-size:300%;}
            p{text-align:center; font-size:150%; color:white;}
            a {border: 5px solid pink; padding: 20px;}
        </style>
    </head>
    <body>
        <h1>Volumen de una piramide triangular</h1>
        <%
            if (request.getParameter("lado") != null&&request.getParameter("altura") != null) {
        %>
        <h3>El volumen de la piramide es: </h3>
        <%
            double lado = Integer.parseInt(request.getParameter("lado"));
            double altura = Integer.parseInt(request.getParameter("altura"));
            out.print(altura*Math.pow(lado, 2)/3);
        %>
        <br><br><input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
        <%} else {%>
        <form> 
            Ingresa el valor del lado: <input type="number" name="lado" required min="0"/><br>
            Ingresa el valor de la altura: <input type="number" name="altura" required min="0"/><br>
            <input type="submit" value="Calcular" />
            <input type="button" onclick="history.back()" name="volver atrás" value="Inicio">
        </form>
        
        <%}
        %>
    </body>
</html>
