<%-- 
    Document   : Index
    Created on : 24-may-2020, 21:29:16
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volumen de una esfera</title>
    </head>
    <body style="background-color:powderblue;">
        <h1 style="text-align:center; font-size:300%; color:pink;">Calcula el volumen de una esfera.</h1>
        <p></p>
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
            Ingresa el radio: <input type="number" name="radio" required min="0"/><br>
            <input type="submit" value="Calcular" /><br><br>
        </form>
       
        <%}
        %>
    </body>
</html>
