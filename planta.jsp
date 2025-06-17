

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

    <body>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--Usamos la directiva de taglib con predijo c y para usar la libreria de jstl-->
        <!--contact -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabeceraHome2.jsp"/>
        <div id="contact" style="padding-bottom: 90px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Planta: ${planta.nombreComun}</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 paddimg-right">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <form class="plants-box">

                                    <div class="row">
                                        <div class="plants-box">
                                            <p> <b> Nombre: </b>${planta.nombreComun}.</p>
                                            <c:choose>
                                                <c:when test="${empty sinonimos}">
                                                    <p> <b> Sinonimos: </b> Esta planta no cuenta con sinonimos registrados.</p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p> <b> Sinonimos: </b> Esta planta también se conoce con los siguientes sinonimos:</p>
                                                    <c:forEach var="sinonimo" items="${sinonimos}">
                                                        <p>&nbsp;&nbsp;- ${sinonimo.nombreSinonimo}.</p>
                                                    </c:forEach>                          
                                                </c:otherwise>
                                            </c:choose>
                                            <p> <b> Beneficios: </b>El uso de esta planta puede tener beneficios sobre las siguientes patologías:</p>
                                            <c:forEach var="beneficio" items="${beneficios}">
                                                <p>&nbsp;&nbsp;- ${beneficio.nombreBeneficio}.</p>
                                            </c:forEach>
                                            <p> <b> Contraindicaciones: </b>El uso de esta puede presentar las siguientes contraindicaiones:</p>
                                            <c:forEach var="contraindicacion" items="${contraindicaciones}">
                                                <p>&nbsp;&nbsp;- ${contraindicacion.nombreContraindicacion}.</p>
                                            </c:forEach>
                                            <p> <b> Parte utilizada: </b>Se utilizan las siguientes partes de la planta:</p>
                                            <c:forEach var="partePlanta" items="${partesPlanta}">
                                                <p>&nbsp;&nbsp;- ${partePlanta.nombreParte}.</p>
                                            </c:forEach>
                                            <p> <b> Forma de empleo: </b>La planta cuenta con las siguientes formas de empleo:</p>
                                            <c:forEach var="formaEmpleo" items="${formasEmpleo}">
                                                <p>&nbsp;&nbsp;- ${formaEmpleo.nombreForma}.</p>
                                                <c:forEach var="formaEmpleoDescripcion" items="${formasEmpleoDescripcion}">
                                                    <c:if test="${formaEmpleoDescripcion.idFormaEmpleo == formaEmpleo.idFormaEmpleo}">
                                                        <c:if test="${not empty formaEmpleoDescripcion.descripcion}">
                                                            <p>&nbsp;&nbsp;&nbsp; ${formaEmpleoDescripcion.descripcion}.</p>
                                                        </c:if >
                                                    </c:if>
                                                </c:forEach>
                                                <c:forEach var="formaEmpleoPosologia" items="${formasEmpleoPosologia}">
                                                     <c:if test="${formaEmpleoPosologia.idFormaEmpleo == formaEmpleo.idFormaEmpleo}">
                                                        <c:if test="${not empty formaEmpleoPosologia.posologia}">
                                                            <p>&nbsp;&nbsp;&nbsp; ${formaEmpleoPosologia.posologia}.</p>
                                                        </c:if >
                                                    </c:if>
                                                </c:forEach>
                                            </c:forEach> 
                                        </div>
                                        <br>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 paddimg-left">
                        <div class="Nursery-img">
                            <figure>
                                <img src="${planta.fotoPlanta}" alt="img" />
                                <div class="text-box">
                                    <h3>${planta.nombreComun}</h3>
                                </div>
                            </figure>
                        </div>
                        <br />
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <div>
                                <b>
                                    <h2>${planta.nombreCientifico}</h2>
                                </b>
                            </div>

                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <p>${planta.descripcionPlanta}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
        <!-- end contact -->
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
