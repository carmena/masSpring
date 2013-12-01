<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Panel Administrador</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">


                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <div class="icon">
                                <i class="icon-2x icon-group"></i>
                            </div>
                            <h4>Usuarios</h4>
                            <a class="minimize" href="#"></a>
                        </div>

                        <div class="panel-body">

                            <table class="table table-hover table-bordered">

                                <th class="span3 header">Nombre</th>
                                <th class="header">Email</th>
                                <th class="header">Celular</th>
                                <th class="header">Sexo</th>
                                <th class="header">Dirección</th>
                                <th class="header">Estado</th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>
                                


                                <c:forEach var="adm" items="${admins}">
                                    <tr>
                                        <td><c:out value="${adm.getFullName()}"/></td>
                                        <td><c:out value="${adm.email}"/></td>
                                        <td><c:out value="${adm.celular}"/></td>
                                        <td><c:out value="${adm.sexo}"/></td>
                                        <td><c:out value="${adm.direccion}"/></td>
                                        <td>
                                            <c:if test="${adm.usuario.estado == 1}">
                                                <label class="label label-success">Activo</label>
                                            </c:if>
                                            <c:if test="${adm.usuario.estado != 1}">
                                                <label class="label label-warning">Inactivo</label>
                                            </c:if>
                                        </td>
                                        <td><a href="<%=contextPath%>/adm/admin/update/${adm.id}"><i class="icon-edit"></i></a>
                                        </td>
                                       
                                        <td><a href="<%=contextPath%>/adm/admin/delete/${adm.id}"><i class="icon-trash" style="color: red"></i></a>
                                        </td>
                                    
                                    </tr>
                                </c:forEach>
                            </table>

                        </div>


                    </div>


                </div>
            </div>
            <hr>
        </div>

        <%@include file="/public/footer.jsp" %>

    </body>
</html>