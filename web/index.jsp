<%-- 
    Document   : index
    Created on : 18-jul-2014, 8:47:00
    Author     : est06
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario de registro</h1>
        <form name="principal" action="prueba">
            <br>
            Nombre
            <input type="text" name="Nombre" value="" size="50" />

            Apellido
            <input type="text" name="Apellido" value="" size="50" />
            <br><input type="submit" value="Enviar" name="Enviar" />

        </form>

        <%@ page import="org.netbeans.saas.*, org.netbeans.saas.google.*" %>

        <%

            try {
                String address = "16 Network Circle, Menlo Park";
                java.lang.Integer zoom = 15;
                String iframe = "false";

                RestResponse result = GoogleMapService.getGoogleMap(address, zoom, iframe);
                         //TODO - Uncomment the print Statement below to print result.
                out.println("The SaasService returned: "+result.getDataAsString());
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        %>


    </body>
</html>
