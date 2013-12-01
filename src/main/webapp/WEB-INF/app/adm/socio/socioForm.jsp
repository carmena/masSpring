<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Socios </title>
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
                                <i class="icon-2x icon-user"></i>
                            </div>
                            <h4>Socio</h4>
                            <a class="minimize" href="#"></a>
                        </div>


                        <div class="panel-body">

                            <form id="socioForm" action="<%=contextPath%>/adm/socio/save" method="POST" class="form-horizontal">

                                <input type="hidden" value="${socio.id}" name="id">

                                <div class="control-group">
                                    <label class="control-label">Nombres</label>
                                    <div class="controls">
                                        <input type="text" name="nombres" value="${socio.nombres}">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Apellido Paterno</label>
                                    <div class="controls">
                                        <input type="text" name="paterno" value="${socio.paterno}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Apellido Materno</label>
                                    <div class="controls">
                                        <input type="text" name="materno" value="${socio.materno}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Email</label>
                                    <div class="controls">
                                        <input type="text" name="email" value="${socio.email}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Celular</label>
                                    <div class="controls">
                                        <input type="text" name="celular" value="${socio.celular}">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Dirección</label>
                                    <div class="controls">
                                        <input type="text" name="direccion" value="${socio.direccion}">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <a class="btn" href="<%=contextPath%>/adm/admin">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>
                            </form>



                        </div>


                    </div>






                </div>
            </div>
            <hr>
        </div>
        <%@include file="/public/footer.jsp" %>


        <script>

            $("#socioForm").validate({
                rules: {
                    nombres: {
                        required: true,
                        minlength: 2
                    },
                    paterno: {
                        required: true,
                        minlength: 2
                    },
                    materno: {
                        required: true,
                        minlength: 2
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    celular: {
                        required: true,
                        digits: 2
                    },
                    direccion: {
                        required: true,
                        minlength: 3
                    }


                },
                messages: {
                    nombres: {
                        required: "Por favor ingrese sus nombres",
                        minlength: "Mínimo 2 caracteres de longitud"
                    },
                    paterno: {
                        required: "Por favor ingrese su apellido paterno",
                        minlength: "Mínimo 2 caracteres de longitud"
                    },
                    materno: {
                        required: "Por favor ingrese su apellido materno",
                        minlength: "Mínimo 2 caracteres de longitud"
                    },
                    direccion: {
                        required: "Por favor ingrese su direccion",
                        minlength: "Mínimo 3 caracteres de longitud"
                    }
                }
            });

        </script>



    </body>
</html>