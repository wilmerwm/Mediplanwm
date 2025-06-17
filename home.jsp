
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Fitoterapia Lab</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="img/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
    </head>
    <!-- body -->

    <body class="main-layout">
        <!-- loader  -->
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--Usamos la directiva de taglib con predijo c y para usar la libreria de jstl-->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!--Usamos la directiva de taglib con predijo fn y para usar la libreria de jstl-->
<!--        <div class="loader_bg">
            <div class="loader"><img src="img/loading.gif" alt="#" /></div>
        </div>-->
        <!-- end loader -->
        <!-- header -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabeceraHome.jsp"/>
        <section>
            <div id="main_slider" class="carousel slide banner-main" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#main_slider" data-slide-to="0" class="active"></li>
                    <li data-target="#main_slider" data-slide-to="1"></li>
                    <li data-target="#main_slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container">
                            <div class="row marginii">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                    <div class="carousel-caption ">
                                        <h1>Bienvenidos a <strong class="color">Fitoterapia Lab </strong></h1>
                                        <p>Curar con las hierbas, es un arte milenario que recibe el nombre de Fitoterapia.
                                            Cada vez, se habla más de ella como una auténtica medicina diferente, alternativa, que
                                            tiene sus propias reglas.</p>

                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                    <div class="img-box">
                                        <figure><img src="img/gyufyufyu.png" alt="img" /></figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <div class="row marginii">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                    <div class="carousel-caption ">
                                        <h1>Bienvenidos a <strong class="color">Fitoterapia Lab </strong></h1>
                                        <p>Dada la importancia de preservar el uso de las plantas medicinales, como alternativa de
                                            mejorar nuestra salud, se ha creado un sistema donde se pueda acceder a la información de
                                            las plantas medicinales
                                            de una manera más eficiente y adecuada para cualquier usuario.
                                        </p>

                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                    <div class="img-box ">
                                        <figure><img src="img/girasoles.jpg" alt="img" /></figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                    <i class='fa fa-angle-left'></i></a>
                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                    <i class='fa fa-angle-right'></i>
                </a>
            </div>
        </section>
        <!-- plant -->
        <div id="plant" class="plants">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="titlepage">
                            <h2>Algunas de nuestras plantas</h2>
                            <span>Estas son algunas de las plantas que puedes encontrar en el sistema</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <c:forEach var="planta" items="${plantas}" varStatus="status">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                            <div class="plants-box">
                                <figure><a href="${pageContext.request.contextPath}/ServletControladorHome?accion=planta&idPlanta=${planta.idPlanta}"><img src="${planta.fotoPlanta}" alt="img" /></a></figure>
                                <h3>${planta.nombreComun}</h3>
                                <c:set var="shortDesc" value="${planta.descripcionPlanta}"/>
                                <p>${fn:substring(shortDesc,0,100)}...</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- end plant -->

            <div id="id01" class="modal">

                <form class="modal-content animate" action="${pageContext.request.contextPath}/ServletControladorHome" method="POST">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close"
                              title="Close Modal">&times;</span>
                    </div>
                    <div class="titlepage">
                        <h2>Filtros de busqueda</h2>
                    </div>
                    <div class="container">
                        
                        <label for="busqueda"><b>Seleccione el tipo de busqueda</b></label>
                        <br>
                        <select name="busqueda" required>
                            <option value="">-Seleccione-</option>
                            <option value="1">Nombre</option>
                            <option value="2">Beneficio</option>
                        </select>
                        <!--<br>-->
                        <input type="text" placeholder="Digite aquí su busqueda" name="texto" required>

                        <button type="submit">Buscar</button>
                        
                    </div>

                </form>
            </div>

            <!-- footer -->
            <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
            <!-- end footer -->
            <!-- Javascript files-->
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="js/jquery-3.0.0.min.js"></script>
            <script src="js/plugin.js"></script>
            <!-- sidebar -->
            <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
            <script src="js/custom.js"></script>
            <!-- javascript -->
            <script src="js/owl.carousel.js"></script>
            <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
            <script>
                         $(document).ready(function () {
                             $(".fancybox").fancybox({
                                 openEffect: "none",
                                 closeEffect: "none"
                             });

                             $(".zoom").hover(function () {

                                 $(this).addClass('transition');
                             }, function () {

                                 $(this).removeClass('transition');
                             });
                         });

            </script>
            <script>
                // Get the modal
                var modal = document.getElementById('id01');

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>
             <script>
                 <c:choose>
                     <c:when test="${not empty alert}">
                              Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'No encontramos plantas realcionadas con la busqueda!'
                          })                             
                     </c:when>
                         </c:choose>
                          
            </script>
            

    </body>
</html>
