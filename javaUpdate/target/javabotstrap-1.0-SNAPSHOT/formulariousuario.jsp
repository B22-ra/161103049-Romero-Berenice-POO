<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String titulo = null, usuario="";
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar usuario";
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt= conexion.prepareStatement("SELECT* FROM usuario WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs= stmt.executeQuery();
            rs.next();
            usuario=rs.getString("nombre");
        } catch (Exception e) {
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario usuario</title>
    </head>
    <body>
        <div class="container">
            <h1><%=titulo%></h1>
            <form action="agregarusuario.jsp" method="POST" class="form">
                <div class="form-row">
                    <div class="col">
                        <input class="form-control" type="text" value="<%=usuario%>" placeholder="Nombre" name="usuario" id="usuario" required/>
                    </div>
                    <div class="col">
                        <input class="form-control" type="password" placeholder="Contraseña" name="password" id="password" required/>
                    </div>
                    <div class="col">
                        <input class="btn btn-success btn-block" type="submit" value="Agregar"/>
                    </div>
                </div>    
            </form>
        </div>
    </body>
</html>
