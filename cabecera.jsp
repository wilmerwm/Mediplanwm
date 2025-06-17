
--%>
<header>
    <!-- header inner -->
    <div style="padding: 45px;">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo"> <a href="index.jsp"><img src="img/logo.png" alt="#"></a> </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <div class="menu-area">
                        <div class="limit-box">
                            <nav class="main-menu">
                                <ul class="menu-area-main">
                                    <li class="active"> <a href="index.jsp" style="text-decoration: none">Inicio</a> </li>
                                    <!--<li class="active"> <a href="#">Administración</a> </li>-->
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Administración
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletControladorBeneficio">Beneficios</a>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletControladorContraindicacion">Contraindicaciones</a>
                                            <!--<div class="dropdown-divider"></div>-->
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletControladorFormaEmpleo">Formas de empleo</a>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletControladorPartePlanta">Partes planta</a>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletControladorPlanta">Planta</a>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end header inner -->
</header>
<!-- end header -->
