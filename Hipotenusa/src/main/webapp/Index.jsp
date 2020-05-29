<%-- 
    Document   : Index
    Created on : 26-may-2020, 12:49:53
    Author     : bere
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
function cambia() {
         opciones = document.formulario.color; //acceso a los botones radio
         for (i=0;i<opciones.length;i++) { //buscr valor del botón pulsado
            if (opciones[i].checked == true) {
               elegido = opciones[i].value
               }
            }
        switch (elegido) { //elegir color según boton pulsado
          case "rojo":
          document.fgColor = "red";
          break;
          case "verde":
          document.fgColor = "green";
          break; 
          case "purpura":
          document.fgColor = "purple";
          break;
          case "oliva":
          document.fgColor = "olive"
          break;
          case "marron":
          document.fgColor = "maroon"
          break;
          case "azul_oscuro":
          document.fgColor = "navy"
          break;
          case "azul_marino":
          document.fgColor = "teal"
          break;
          default: 
          document.fgColor = "blue"
          break;
          } 
        }
</script>
</head>
    </head>
    <body>
        <h3>¿Que quieres calcular?</h3>
        <form>
            <input type="radio" id="catetoa" name="a" value="catetoa"/>
            <label for="catetoa">Cateto A</label><br>
            <input type="radio" id="catetob" name="b" value="catetob"/>
            <label for="catetob">Cateto B</label><br>
            <input type="radio" id="hipotenusa" name="h" value="hipotenusa"/>
            <label for="hipotenusa">Hipotenusa</label><br><br>
            <input type="submit" value="Calcular"/><br>
        </form>
    </body>
</html>
