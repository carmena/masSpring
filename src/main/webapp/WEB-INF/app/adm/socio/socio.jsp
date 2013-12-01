
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Socios</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">


                    
                    
                    <div class="row">
                        <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/socio/new"> Nuevo </a>
                        <h1> Socios </h1>
                    </div>


                        <table class="table table-hover">
                            
                            <th class="span3">Nombre</th>
                            <th>Email</th>
                            <th>Celular</th>
                            <th>Sexo</th>
                            <th>Dirección</th>
                            <th>Estado</th>
                            <th></th>
                            
                            <c:forEach var="socio" items="${socios}">
                            <tr>
                                <td><c:out value="${socio.getFullName()}"/></td>
                                <td><c:out value="${socio.email}"/></td>
                                <td><c:out value="${socio.celular}"/></td>
                                <td><c:out value="${socio.sexo}"/></td>
                                <td><c:out value="${socio.direccion}"/></td>
                                <td>
                                    <c:if test="${socio.usuario.estado == 1}">
                                        <label class="label label-success">Activo</label>
                                    </c:if>
                                    <c:if test="${socio.usuario.estado != 1}">
                                        <label class="label label-warning">Inactivo</label>
                                    </c:if>
                               </td>
                                                                                    
                            <td> 
                                    <div class="btn-group">
                                        <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                          <i class="icon-cog"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="<%=contextPath%>/adm/socio/update/${socio.id}">
                                                Editar<a>
                                            </li>
                                            <li>
                                                <a href="<%=contextPath%>/adm/socio/delete/${socio.id}">
                                                    Eliminar<a>
                                            </li>
                                        </ul>
                                      </div>
                                </td>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            </tr>
                            </c:forEach>
                            
                            
                            
                            
                            
                            
                        </table>
                    
                    


                </div>
            </div>
            <hr>
        </div>

    <%@include file="/public/footer.jsp" %>

    </body>
</html>