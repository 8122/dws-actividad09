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
        <% if (
            (request.getParameter("nombre")==null || request.getParameter("nombre").equals("")) &&
            (request.getParameter("cantidad")==null || request.getParameter("cantidad").equals("")) &&
            (request.getParameter("estado")==null || request.getParameter("estado").equals("")) &&
            (request.getParameter("causa")==null || request.getParameter("causa").equals(""))
          ) { %>
        <form name="formulario1" method="POST" action="solicitud.jsp">
            <table>
                <tr align="center">
                    <th colspan="2">SOLICITUD AUTORIZACION MÉDICA</th>
                </tr>
                <tr><td align="right">Practica: </td><td><input type="text" name="nombre" value="" size="25" /></td></tr>
                <tr><td align="right">Cantidad: </td><td><input type="text" name="cantidad" value="" size="25" /></td></tr>
                <tr>
                    <td align="right">Estado:</td>
                    <td>
                        <% String aceptada="", rechazada=""; %>
                        <% if(Boolean.parseBoolean(request.getParameter("estado"))==true) { aceptada="checked"; }
                        else { rechazada="checked"; } %>
                        <input type="checkbox" name="estado" value="OFF"  checked="<%=aceptada%>"/>Autorizada
                        <input type="checkbox" name="estado" value="OFF"  checked="<%=rechazada%>"/>Rechazada
                    </td>
                </tr>
                <tr>
                    <td align="right">Causa de rechazo: </td>
                    <td><input type="text" name="causa" readonly="readonly" size="25" value="<% request.getParameter("causa");%>"></td>
                </tr>
                <tr>
                    <td align="center"><input type="button" name="enviar" onclick="submit" value="Comprobar practica"></td>
                    <td align="center"><input type="button" name="borrar" onclick="reset" value="Borrar datos" ></td>
                </tr>
            </table>
        </form>
        <% } else { %>
            <% PracticaMedica.comprobarEstado(); %>
            <% String nombre, cantidad, estado, causa; %>
            <% 
                nombre = request.getParameter("nombre");
                cantidad = request.getParameter("cantidad");
                estado = request.getParameter("estado");
                causa = request.getParameter("causa");
            %>
            <jsp:setProperty name="usuario" property="nombre" value="<%=nombre%>" />
            <jsp:setProperty name="usuario" property="cantidad" value="<%=cantidad%>" />
            <jsp:setProperty name="usuario" property="estado" value="<%=estado%>" />
            <jsp:setProperty name="usuario" property="causa" value="<%=causa%>" />
            <jsp:forward page="/formulario2.jsp" ></jsp:forward>
        <% } %>
    </body>
</html>
