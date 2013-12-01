<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Club Admin v.1.0</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <div class="container-fluid">
            <div id="login">
                <div class="login-wrapper" data-active="log">
                    <a class="navbar-brand" href="dashboard.html"><img src="<%=contextPath%>/public/app/img/image5.jpg" alt="Genyx admin" class="img-responsive"></a>
                    <div id="log">
                        <div class="page-header">
                            <h3 class="center">Por favor ingrese sus datos...</h3>
                        </div>
                        <form role="form" id="login-form" class="form-horizontal" action="<%=contextPath%>/j_spring_security_check" method="post">
                            <div class="row">
                                <div class="form-group relative">
                                    <div class="icon"><i class="icon-large icon-user"></i></div>
                                    <input class="form-control" type="text" name="j_username" id="user" placeholder="Email">

                                </div><!-- End .control-group  -->
                                <div class="form-group relative">
                                    <div class="icon"><i class="icon-large icon-key"></i></div>
                                    <input class="form-control" type="password" name="j_password" id="password" placeholder="Contraseña">

                                </div><!-- End .control-group  -->

                                <div class="form-group relative">
                                    <button id="loginBtn" type="submit" class="btn btn-primary center">Ingresar</button>
                                </div>

                            </div><!-- End .row-fluid  -->
                        </form>
                    </div>

                </div>

                <div class="clearfix"></div>
            </div>
        </div>


        <%@include file="/public/footer.jsp" %>
        <script src="<%=request.getContextPath()%>/public/app/js/login.js"></script>
    </body>
</html>
