<%-- 
    Document   : listaplantas.jsp
    Created on : 10/06/2021, 10:11:07 AM
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->

        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css">

              </head>

        <!-- body -->
    <body class="main-layout">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--Usamos la directiva de taglib con predijo c y para usar la libreria de jstl-->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!--Usamos la directiva de taglib con predijo fn y para usar la libreria de jstl-->
        <!-- plant -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabeceraHome2.jsp"/>
        <div id="plant" style="padding-bottom: 90px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="titlepage">
                            <h2>Resutados de la busqueda</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <c:forEach var="planta" items="${plantas}">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                            <div class="plants-box">
                                <figure><a class="zoom" href="${pageContext.request.contextPath}/ServletControladorHome?accion=planta&idPlanta=${planta.idPlanta}"><img src="${planta.fotoPlanta}" alt="img" /></a></figure>
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
        <div id="id01" class="modal" >

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
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
                
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
    </body>
</html>
