<%-- 
    Document   : AllNoticias
    Created on : 23/11/2020, 01:31:43 PM
    Author     : Dell 66895
--%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Noticias</title>

        <jsp:include page="header.jsp"/>


        <link rel="stylesheet" href="css/noticias.css" />
    </head>
    <body>

        <jsp:include page="NavBar.jsp"/>


        <div class="container">
            <h2 class="Subtitles">Noticias</h2>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="#"><i class="far fa-surprise"></i> Lo mejor <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fab fa-hotjar"></i> Popular</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fas fa-bahai"></i> Nuevo</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-filter"></i> Filtrar
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Alfabeticamente</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Mas antiguo</a>
                                <a class="dropdown-item" href="#">Mas reciente</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </nav>


            <div class="list-group">
                <li class="list-group-item list-group-item-dark">Categorías</li>
                <button type="button" class="list-group-item list-group-item-action active">
                    Películas
                </button>
                <button type="button" class="list-group-item list-group-item-action">Celebridades</button>
                <button type="button" class="list-group-item list-group-item-action">Estrenos</button>
                <li class="list-group-item list-group-item-dark">Género</li>
                <button type="button" class="list-group-item list-group-item-action">Acción</button>
                <button type="button" class="list-group-item list-group-item-action">Aventura</button>
                <button type="button" class="list-group-item list-group-item-action">Comedia</button>
                <button type="button" class="list-group-item list-group-item-action">Drama</button>
                <button type="button" class="list-group-item list-group-item-action">Terror</button>
                <button type="button" class="list-group-item list-group-item-action">Clásico</button>
            </div>
            <!-- Aquí ? -->



            <!--                     -->
            <!--      Noticias       -->
            <!--                     -->
            <div class="container">


                <div class="noticia">
                    <span class="badge badge-info etiqueta">Peliculas</span>
                    <div class="inline-flex">
                        <img class="img" src="https://img.cinemablend.com/filter:scale/quill/0/5/d/4/3/7/05d437f057866c5f7bd647d58bbc49603c13c5e5.jpg?mw=600" />

                        <div class="texto"><!--  Tarjeta-texto-->


                            <p style="margin-top: 0px">
                                <strong>
                                    ¿El éxito de Real Steel de Netflix ha generado nuevas esperanzas de secuela? Esto es lo que dijo el director
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                La vida de una película como Real Steel, del director Shawn Levy, solía ser un asunto sencillo. Bajo el modelo más tradicional que se basó únicamente en el lanzamiento de videos caseros y teatrales

                            </p>
                            <a class="linkColor"  href="Home.html" >Sigue leyendo...</a >



                        </div>
                    </div>
                    <div class="row A-left">
                        <i class="fas fa-hand-point-up" :hover>10.5k</i>
                        <i class="fas fa-hand-point-down" :hover>4.1k</i>
                        <i class="fas fa-comment" :hover>25</i>
                        <i class="fas fa-ellipsis-h" :hover></i>
                        <p class="fecha">9 octubre, 2020</p>
                    </div>
                </div>

                <div class="noticia">
                    <span class="badge badge-info etiqueta">Actores</span>
                    <div class="inline-flex">
                        <img class="img" style="  object-position: 0% 25%;"
                             src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/2/4/d/6/0/3/24d603f66ebcbec26cb5dc57fc7a80591b5aeafa.jpg"
                             />

                        <div class="texto"><!--  Tarjeta-texto-->


                            <p style="margin-top: 0px">
                                <strong>
                                    Michael B. Jordan de Black Panther ha subido a una película de DC
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                El papel de villano más icónico de Michael B. Jordan como Killmonger de Black Panther puede haber sido de corta duración en el MCU, pero eso no significa que haya terminado con el género del cómic todavía.

                            </p>
                            <a class="linkColor"  href="Home.html" >Sigue leyendo...</a >



                        </div>
                    </div>
                    <div class="row A-left">
                        <i class="fas fa-hand-point-up" :hover>10.5k</i>
                        <i class="fas fa-hand-point-down" :hover>4.1k</i>
                        <i class="fas fa-comment" :hover>25</i>
                        <i class="fas fa-ellipsis-h" :hover></i>
                        <p class="fecha">5 octubre, 2020</p>
                    </div>
                </div>
                <div class="noticia">
                    <span class="badge badge-info etiqueta">Controversia</span>
                    <div class="inline-flex">
                        <img class="img"  style="  object-position: 0% 15%;"
                             src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/3/2/d/4/f/4/32d4f4b86a9f335a43175006b475668b40fb165b.jpg" />

                        <div class="texto"><!--  Tarjeta-texto-->


                            <p style="margin-top: 0px">
                                <strong>
                                    One Thing Top Gun definitivamente 'robó' a los pilotos de combate reales
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                Naturalmente, Top Gun de 1986 hizo grandes esfuerzos para garantizar que el vuelo se viera lo más realista posible, pero esa no era la única forma en que la función dirigida por Tom Cruise representaba con precisión la vida de un piloto de la Marina de los EE.

                            </p>
                            <a class="linkColor"  href="Home.html" >Sigue leyendo...</a >



                        </div>
                    </div>
                    <div class="row A-left">
                        <i class="fas fa-hand-point-up" :hover>10.5k</i>
                        <i class="fas fa-hand-point-down" :hover>4.1k</i>
                        <i class="fas fa-comment" :hover>25</i>
                        <i class="fas fa-ellipsis-h" :hover></i>
                        <p class="fecha">2 octubre, 2020</p>
                    </div>
                </div>
                <div class="noticia">
                    <span class="badge badge-info etiqueta">Peliculas</span>
                    <div class="inline-flex">
                        <img class="img"  style="  object-position: 0% 25%;"
                             src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/4/d/0/6/5/e/4d065e07cdfcb525f4f14570c84e1a85e110f750.png" />

                        <div class="texto"><!--  Tarjeta-texto-->


                            <p style="margin-top: 0px">
                                <strong>
                                    La directora de Wonder Woman, Patty Jenkins, habla sobre cuándo podría abrir la película
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                La industria del entretenimiento se encuentra en un lugar único en este momento, ya que innumerables proyectos se han retrasado en medio de problemas de salud global.

                            </p>
                            <a class="linkColor"  href="Home.html" >Sigue leyendo...</a >



                        </div>
                    </div>
                    <div class="row A-left">
                        <i class="fas fa-hand-point-up" :hover>10.5k</i>
                        <i class="fas fa-hand-point-down" :hover>4.1k</i>
                        <i class="fas fa-comment" :hover>25</i>
                        <i class="fas fa-ellipsis-h" :hover></i>
                        <p class="fecha">29 septiembre, 2020</p>
                    </div>
                </div>

            </div>


            <nav aria-label="..." class="pag">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item active"></li>
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>



            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    </body>
</html>
