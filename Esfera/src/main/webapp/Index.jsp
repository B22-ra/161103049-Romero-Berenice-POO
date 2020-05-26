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
    <body>
        <h1>Calcula el volumen de una esfera.</h1>
        <%
            if (request.getParameter("radio") != null) {
        %>
        <h1>El volumen de la esfera es: </h1><br>
        <%
            int radio = Integer.parseInt(request.getParameter("radio"));
            out.println((4.0 / 3) * Math.PI * Math.pow(radio, 3));
        %>
        <input type="hidden" name=""/><br>
        <input type="submit" value="Regresar" /><br><br>
        <%} else {%>
        <form> 
            Ingresa el volumen de la esfera: <input type="number" name="radio" required/><br>
            <input type="submit" value="Calcular" /><br><br>
        </form>
       
        <%}
        %>
    </body>
</html>
