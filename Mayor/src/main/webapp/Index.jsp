<%-- 
    Document   : Index
    Created on : 27-may-2020, 17:00:16
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>solicitar numero</title>
    </head>
    <body>
        <h1>Ingrese el numero de numeros que desea ingresar.</h1>
        <form action="solicita.jsp">
            <input type="number" name="numero" required/>
            <input type="submit" name="" value="Enviar el numero"/>
        </form>
    </body>
</html>
