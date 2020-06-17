<%-- 
    Document   : solicita
    Created on : 27-may-2020, 17:13:40
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero = Integer.parseInt(request.getParameter("numero"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ingresa los numeros</title>
        <h1>Ingresa un total de <%out.println(numero);%> numeros </h1>
        <form>
            <%for(int i=0; i<numero; i++){%>
            <input type="number" name="valor" required/>
            <%}%>
            <input type="hidden" value="<%out.print(numero);%>" name="numero"/>
            <input type="submit" value="Enviar datos"/>
        </form>
           
    </head>
    <body>
       
    </body>
</html>
