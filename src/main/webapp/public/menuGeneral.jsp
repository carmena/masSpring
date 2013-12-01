<c:set var="usuario" value="${persona}">

</c:set>

<header id="header">
    <div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container">

                <i></i>
                <a class="brand">Club admin</a>


                <ul class="nav pull-right">

                    <li class="rol">
                        <p>Administrador</p>
                    </li>
                    
                    <li>
                        <a data-toggle="dropdown" href="#">
                            <span>
                                <img class="menu-avatar" src="<%=request.getContextPath()%>/public/app/img/no_avatar.jpg">
                                <span>
                                    ${usuario.nombres} ${usuario.paterno}
                                    <i class="icon-caret-down"></i>
                                </span>

                            </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li  class="with-image">
                                <div class="avatar">
                                    <img class="img-rounded" src="<%=request.getContextPath()%>/public/app/img/no_avatar.jpg">
                                </div>
                                <span>${usuario.nombres} ${usuario.paterno}</span>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="<%=contextPath%>/adm/admin/update/${usuario.id}">
                                    <i class="icon-user"></i>
                                    <span>Perfil</span>
                                </a>
                            </li>
                            <c:url var="logoutUrl" value="/logout"/>
                            <li>
                                <a href="${logoutUrl}">
                                    <i class="icon-off"></i>
                                    <span>Salir</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>

        </div>
    </div>

</header>