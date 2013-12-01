

<%@page import="app.model.Campo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    List<Campo> campos = (List<Campo>) request.getAttribute("campos");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
    <body>
        
        
        
        <table class="table table-striped table-hover"> 
                        <thead>
                        <th> Local </th>
                        <th> Descripción </th>
                        <th> CostoxHora </th>
                        <th></th>
                        </thead>
                        <tbody>
                            <% for (Campo campo : campos) {%>
                            <tr>
                                <td> <%=campo.getLocal().getDescripcion()%> </td>
                                <td> <%=campo.getDescripcion()%> </td>
                                <td> <%=campo.getCostoHora()%> </td>
                                
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
        
        
        
        
        
    </body>
</html>
