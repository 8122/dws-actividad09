<%-- 
    Document   : solicitud
    Created on : 28-sep-2016, 10:51:45
    Author     : alumno
--%>

<%@page contentType="text/html;UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.PracticaMedica" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud</title>
    </head>
    <body>
        <form name="formulario1" method="POST" action="formulario1.jsp">
            <table>
                <tr align="center">
                    <th colspan="2">SOLICITUD AUTORIZACION MÉDICA</th>
                </tr>
                <tr><td align="right">Practica: </td><td><input type="text" name="nombre" value="" size="16" /></td></tr>
                <tr><td align="right">Cantidad: </td><td><input type="text" name="cantidad" value="" size="16" /></td></tr>
                <tr>
                    <td>Causa de rechazo: </td>
                    <td><select name="causas">
                            <% String causa = request.getParameter("causa"); %>
                            <% String[] causas = request.getParameter("causas"); %>
                            <option><% request.getParameter("causas[0]"); %></option>
                            <option></option>
                            <option></option>
                            <option></option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
