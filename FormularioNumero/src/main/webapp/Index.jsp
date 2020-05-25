<%-- 
    Document   : Index
    Created on : 21-may-2020, 19:07:38
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Este formulario imprime una lista de numeros.</h1>
        <form> 
            Ingresa un numero entero: <input type="number" name="numero" min="0"/><br>
            <input type="submit" value="Enviar" /><br><br>
            
        </form>
        <h1>La lista de numeros es: </h1><br>
        <% 
           if (request.getParameter("numero") != null){
	     int numero = Integer.parseInt(request.getParameter("numero"));
             for(int i=0; i<=numero; i++){
              System.out.println(i);
              out.println(i);}}
        %>
    </body>
</html>
