
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">

                    
                        
                        
                    
                     <div class="row">
                        <h1> Nuevo Servicio </h1>
                    </div>

                    <form action="<%=contextPath%>/adm/servicio/save" method="post" class="form-horizontal">
                        
                        
                        <input type="hidden" value="${servicio.id}" name="id">
                              
                        
                        <div class="control-group">
                            <label class="control-label">Descripción</label>
                            <div class="controls">
                                <input type="text" name="descripcion" value="${servicio.descripcion}">
                            </div>
                        </div>

                            
                        <div class="control-group">
                            <label class="control-label">Costo / Hora</label>
                            <div class="controls">
                                <input type="text" name="costoHora" value="${servicio.costoHora}">
                            </div>
                        </div>
                                                
                             
                            
                            
                         <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/servicio">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div> 
                            
                        
                    </form>
                    
                        

                        
                        
                        
                        
                        
                </div>
            </div>
            <hr>
        </div>

    <%@include file="/public/footer.jsp" %>

    </body>
</html>