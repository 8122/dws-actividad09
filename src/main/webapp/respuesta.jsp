<%-- 
    Document   : respuesta
    Created on : 07-oct-2016, 9:16:50
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Respuesta solicitud práctica médica</b><br>
        <b>Nombre </b><jsp:getProperty name="usuario" property="nombre" /><br>
        <b>Cantidad: </b><jsp:getProperty name="usuario" property="cantidad" /><br>
        <b>Estado </b><jsp:getProperty name="usuario" property="estado" /><br>
        <b>Causa de rechazo: </b><jsp:getProperty name="usuario" property="causa" /><br>
        <a href="solicitud.jsp">Volver a la pagina de solicitudes</a>
    </body>
</html>
