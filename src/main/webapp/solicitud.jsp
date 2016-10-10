<%-- 
    Document   : solicitud
    Created on : 28-sep-2016, 10:51:45
    Author     : alumno
--%>

<%@page import="java.util.Random"%>
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
                <tr><td align="right">Cantidad: </td><td><input type="text" name="cantidad" value="1" size="25" /></td></tr>
                <tr>
                    <td align="right" hidden="hidden">Estado:</td>
                    <td>
            <%
                Random rd = new Random();
                if(rd.nextDouble()<0.5) {
            %>
                        <input type="text" name="estado" size="25" readonly="readonly" value="Rechazada" hidden="hidden"/>
                    </td>
                </tr>
                <!--Al ser rechazado coloco un nuevo <tr> con la causa del rechazo-->
                <tr>
                    <td align="right" hidden="hidden">Causa de rechazo: </td>
                <%
                    int motivo = (int) (rd.nextDouble()*5+1);
                    switch(motivo){
                        case 1:
                %>
                           <td><input type="text" name="causa" readonly="readonly" size="25" value="Desconocido" hidden="hidden"/></td>
                <%
                            break;
                        case 2:
                %>
                            <td><input type="text" name="causa" readonly="readonly" size="25" value="Falta firma médico" hidden="hidden"/></td>
                <%
                            break;
                        case 3:
                %>
                            <td><input type="text" name="causa" readonly="readonly" size="25" value="Tratamiento demasiado costoso" hidden="hidden"/></td>
                <%          
                            break;
                        case 4:
                %>
                            <td><input type="text" name="causa" readonly="readonly" size="25" value="Pendiente de segunda opinión" hidden="hidden"/></td>
                <%
                            break;
                        case 5:
                %>
                            <td><input type="text" name="causa" readonly="readonly" size="25" value="Diagnostico incierto" hidden="hidden"/></td>
                <%         
                    }
                %>      
                </tr>
            <%
                } else {
            %>
                        <input type="text" name="estado" size="25" readonly="readonly" value="Aceptada" hidden="hidden"/>
                    </td>
                </tr>
                <%
                    } 
                %>
                <tr>
                    <td align="center"><input type="submit" name="enviar" value="Comprobar practica" /></td>
                    <td align="center"><input type="reset" name="borrar" value="Borrar datos" /></td>
                </tr>
            </table>
        </form>
        <% } else { %>
            <% String nombre, cantidad, estado, causa; %>
            <% 
                nombre = request.getParameter("nombre");
                cantidad = request.getParameter("cantidad");
                estado = request.getParameter("estado");
                causa = request.getParameter("causa");
                if(nombre!=null || !nombre.equals("")) {
                    if(estado.equals("Aceptada")){
                        causa = "No procede";
                    } %>
                <jsp:setProperty name="usuario" property="nombre" value="<%=nombre%>" />
                <jsp:setProperty name="usuario" property="cantidad" value="<%=cantidad%>" />
                <jsp:setProperty name="usuario" property="estado" value="<%=estado%>" />
                <jsp:setProperty name="usuario" property="causa" value="<%=causa%>" />
                <jsp:forward page="/respuesta.jsp" ></jsp:forward>
        <% } %>
    </body>
</html>
