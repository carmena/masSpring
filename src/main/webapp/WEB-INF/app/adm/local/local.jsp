<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                <i class="icon-2x icon-home"></i>
                            </div>
                            <h4>Locales</h4>
                            <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/local/new"> Nuevo </a>
                        </div>



                        <div class="panel-body">

                            <table class="table table-hover table-bordered">

                                <th class="span3 header">Descripción</th>
                                <th class="header">Dirección</th>
                                <th class="header">Teléfono</th>
                                <th class="header">Estado</th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>



                                <c:forEach var="camp" items="${locales}">
                                    <tr>
                                        <td><c:out value="${camp.descripcion}"/></td>
                                        <td><c:out value="${camp.direccion}"/></td>
                                        <td><c:out value="${camp.telefono}"/></td>
                                        <td>
                                            <c:if test="${camp.estado == 1}">
                                                <label class="label label-success">Activo</label>
                                            </c:if>
                                            <c:if test="${camp.estado != 1}">
                                                <label class="label label-warning">Inactivo</label>
                                            </c:if>
                                        </td>
                                        <td><a href="<%=contextPath%>/adm/local/listCampos/${camp.id}"><i class="icon-dribbble"></i></a>
                                        </td>
                                        <td><a href="<%=contextPath%>/adm/local/update/${camp.id}"><i class="icon-edit"></i></a>
                                        </td>

                                        <td><a href="<%=contextPath%>/adm/local/delete/${camp.id}"><i class="icon-trash" style="color: red"></i></a>
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
