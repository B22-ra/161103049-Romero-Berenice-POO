<%-- 
    Document   : Index
    Created on : 25-may-2020, 18:56:45
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Potencia de un numero</title>
    </head>
    <body>
        <h1>Este programa calcula la potencia de un numero.</h1>
        <%
            if (request.getParameter("base") != null && request.getParameter("expo") != null) {
        %>
       
        <%
            int base = Integer.parseInt(request.getParameter("base"));
            int expo = Integer.parseInt(request.getParameter("expo"));
            out.println(base+ " elevado a la "+ expo+ " = "+Math.pow(base, expo));
        %>
        <input type="hidden" name=""/><br>
        <input type="submit" value="Regresar" /><br><br>
        <%} else {%>
        <form> 
            Ingresa el numero base: <input type="number" name="base" required/><br>
            Ingresa el exponente: <input type="number" name="expo" required/><br>
            <input type="submit" value="Calcular" /><br><br>
        </form>
        <h3>No has ingresado ningun numero.</h3>
        <%}
        %>
    </body>
</html>
