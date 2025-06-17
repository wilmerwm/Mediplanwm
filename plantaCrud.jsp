
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- style css -->
        <link rel="stylesheet" href="css/style2.css">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        
        <!-- Fontawesome -->
        <script src="https://kit.fontawesome.com/5fd0bddd68.js" crossorigin="anonymous"></script>
        <title>Fitorerapia</title>
    </head>
    <body>

        <!-- Incluimos la cabecera-->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        
        <!-- Incluimos los botones de navegación-->
        <%--<jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>--%>
        <section id="actions" class="py-4 mb-4 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a href="${pageContext.request.contextPath}/ServletControladorPlanta?accion=crear" class="btn btn-success btn-block">
                            <i class="fas fa-plus"></i> Agregar
                        </a>              
                    </div>
                </div>
            </div>
        </section>
                            
                            
        
        <!-- Incluimos el listado de beneficios-->
        <jsp:include page="/WEB-INF/paginas/planta/listadoPlanta.jsp"/>
        
        <!-- Incluimos el pie de pagina-->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    </body>
</html>
