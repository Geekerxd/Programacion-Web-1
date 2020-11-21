<%-- 
    Document   : inicio
    Created on : 19/11/2020, 04:46:03 PM
    Author     : Dell 66895
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home KineCine Page</title>

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Iconos-->
        <script
            src="https://kit.fontawesome.com/8a399301fb.js"
            crossorigin="anonymous"
        ></script>
        <!-- Fonts de google:-->
        <link
            href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap"
            rel="stylesheet"
            />

        <!--bootstrap-->
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/Home.css" />

    </head>
    <body>
        <!--  <a  href="https://www.artstation.com/artwork/L35Dew" target="_blank" >Hola mundo!</a>
        -->

        <!-- esto es la barra de navegacion -->

        <nav
            class="navbar navbar-expand-lg navbar-dark bg-dark"
            style="border-bottom: solid 1px #275d8c59"
            >
            <a class="navbar-brand" id="azulado" href="1index.html" :hover>
                KineCine
                <img
                    class="icon"
                    src=" Assets/KineCineNaranja.png "
                    alt="error-en-al-capa-8"
                    />
            </a>
            <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
                >
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" style="color: #275d8c"
                           >Inicio <span class="sr-only">(current)</span></a
                        >
                    </li>

                    <li class="nav-item dropdown">
                        <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            style="color: #f29849"
                            >
                            Secciones
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Todas las noticias</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Celebridades</a>

                            <a class="dropdown-item" href="#">Rumores</a>
                            <a class="dropdown-item" href="#">Productoras</a>
                            <a class="dropdown-item" href="#">Teorías</a>
                            <a class="dropdown-item" href="#">Curiosidades</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Clásicos</a>
                            <a class="dropdown-item" href="#">Accion</a>
                            <a class="dropdown-item" href="#">Aventura</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            style="color: #f29849"
                            >
                            Reviews
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Reciente Actividad</a>
                            <a class="dropdown-item" href="#">Listas Films</a>
                            <a class="dropdown-item" href="#">Top lo mejor de lo mejor</a>
                            <a class="dropdown-item" href="#">Top lo peor de lo peor</a>
                        </div>
                    </li>
                </ul>

                <form class="form-inline my-2 my-lg-0">
                    <input
                        class="form-control mr-sm-2"
                        type="search"
                        placeholder="Buscar cosas..."
                        aria-label="search"
                        />

                    <button class="btn btn-primary uni"  type="submit">
                        <i class="fas fa-search uni"></i>
                    </button>
                </form>
              
                
                <a href="LogIn.jsp" class="LogIn-text " >
                    Log In
                </a>
               
                <button type="button"
                        class="btn btn-primary SignIn"
                        >     
                    <a href="SignIn.jsp">Sign In</a>
                    
                </button>
                <!--
                 <a href="login.html">
                    <img class="icon-link" src="Assets/pardo.JPG" alt="..." :hover />
                </a>-->

            </div>
        </nav>

        <!-- container-fluid --><!-- data="hover" -->
        <div class="container" style="margin-top: 50px">
            <!--Carrousel-->
            <div
                id="carouselExampleCaptions"
                class="carousel slide"
                data-ride="carousel"
                >
                <ol class="carousel-indicators" >
                    <li
                        data-target="#carouselExampleCaptions"
                        data-slide-to="0"
                        class="active"
                        ></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <span class="badge badge-info etiqueta">peliculas</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img

                                src="https://img.cinemablend.com/filter:scale/quill/1/b/7/f/6/2/1b7f62e8244d93b1af856e6a20d493a53f6fba53.jpg?mw=600"
                                class="d-block w-100" 
                                alt="..."
                                />  
                        </a>

                        <div class="carousel-caption d-none d-md-block" >
                            <h5 >
                                La atracción de Godzilla de tamaño natural de Japón está aquí,
                                mira cómo la gente se lanza en tirolina hacia la boca del
                                monstruo
                            </h5>
                            <p>
                                Desde los años 50, Godzilla ha sido un personaje destacado en el
                                cine japonés.
                                <a class="color2" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <span class="badge badge-info etiqueta">Animación</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1570,h=785//quill/3/e/d/5/0/0/3ed500eda57996a77636f6af6529bdec3495f61b.jpg"
                                class="d-block w-100"
                                alt="..."
                                />
                        </a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5>
                                El nuevo contenido de advertencia que Disney + está agregando a
                                algunas películas importantes
                            </h5>
                            <p>
                                Walt Disney Animation Studios ha existido durante casi un siglo
                                y, como saben,
                                <a class="color2" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <span class="badge badge-info etiqueta">Actores</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/filter:scale/quill/6/e/e/d/e/2/6eede2a5a37d68645ac0c55c9f868f43f7dc1945.jpg?mw=600"
                                class="d-block w-100"
                                alt="..."
                                />
                        </a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5>
                                Parece que Netflix incluso está cancelando programas que
                                llegaron a su lista de los 10 principales ahora
                            </h5>
                            <p>
                                Durante los últimos meses, Netflix ha sido un poco más abierto
                                sobre lo que
                                <a class="color2" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>
                    </div>
                </div>
                <a
                    class="carousel-control-prev"
                    href="#carouselExampleCaptions"
                    role="button"
                    data-slide="prev"
                    >
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a
                    class="carousel-control-next"
                    href="#carouselExampleCaptions"
                    role="button"
                    data-slide="next"
                    >
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- Noticias Destacadas -->
            <div id="main-news">
                <h2 class="Subtitles">Noticias Destacadas</h2>
                <div class="row">
                    <!-- Tamaño PC-->
                    <div class="card col-12 col-sm-6 col-md-3 d-none d-sm-block">
                        <span class="badge badge-info etiqueta">Rumores</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/filter:scale/quill/4/5/7/3/9/6/4573966e4d7705252c319697471a53bb20b3e1d9.png?mw=600"
                                class="card-img-top"
                                alt="no se pudo cargar esta imagen"
                                />
                        </a>
                        <div class="Tarjeta-texto">
                            <p style="margin-top: 15px">
                                <strong>
                                    Parece que Batman va a empezar a filmar en Estados Unidos
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                Alguien encienda la señal de murciélago
                                <a class="linkColor" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>
                        <!-- 
                          
                          <div class="card-body">
                          
                            
                          </div>
                        -->
                        <div class="row empty"></div>
                        <div class="container row A-center">
                            <i class="fas fa-hand-point-up" :hover>11.3k</i>
                            <i class="fas fa-hand-point-down" :hover>3.2k</i>
                            <i class="fas fa-comment" :hover>138</i>
                            <i class="fas fa-ellipsis-h" :hover></i>
                        </div>
                    </div>
                    <div class="card col-12 col-sm-6 col-md-3 d-none d-sm-block">
                        <span class="badge badge-info etiqueta">Productoras</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/0/5/7/5/6/f/05756feff679c1b0871855b46f38a1ea10dd04ef.jpg"
                                class="card-img-top"
                                alt="no se pudo cargar esta imagen"
                                />
                        </a>
                        <div class="Tarjeta-texto">
                            <p style="margin-top: 15px">
                                <strong>
                                    Why One Major Disney Investor Thinks Black Widow Needs To Be
                                    Released On Disney+
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                Disney executives are facing an interesting decision. The Mouse
                                <a class="linkColor" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>

                        <div class="row empty"></div>
                        <div class="container row A-center">
                            <i class="fas fa-hand-point-up" :hover>11.3k</i>
                            <i class="fas fa-hand-point-down" :hover>3.2k</i>
                            <i class="fas fa-comment" :hover>138</i>
                            <i class="fas fa-ellipsis-h" :hover></i>
                        </div>
                    </div>
                    <div class="card col-12 col-sm-6 col-md-3 d-none d-sm-block">
                        <span class="badge badge-info etiqueta">Curiosidades</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/filter:scale/quill/a/d/d/4/7/6/add4764213dce45063c669d5b05e9c4937a0f4fb.jpg?mw=600"
                                class="card-img-top"
                                alt="no se pudo cargar esta imagen"
                                />
                        </a>
                        <div class="Tarjeta-texto">
                            <p style="margin-top: 15px">
                                <strong>
                                    5 Marvel Characters Emily Blunt Would Be Perfect To Play
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                Blunt has admitted to turning down the chance to star as two
                                different characters in the Marvel Cinematic Universe, namely
                                Black Widow
                                <a class="linkColor" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>

                        <div class="row empty"></div>
                        <div class="container row A-center">
                            <i class="fas fa-hand-point-up" :hover>11.3k</i>
                            <i class="fas fa-hand-point-down" :hover>3.2k</i>
                            <i class="fas fa-comment" :hover>138</i>
                            <i class="fas fa-ellipsis-h" :hover></i>
                        </div>
                    </div>
                    <div class="card col-12 col-sm-6 col-md-3 d-none d-sm-block">
                        <span class="badge badge-info etiqueta">Fans</span>
                        <a  href="UnaNoticia.jsp" target="_blank">
                            <img
                                src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/2/8/d/5/b/1/28d5b1bea85d197f30133ddbe567c8cb30f3f230.png"
                                class="card-img-top"
                                alt="no se pudo cargar esta imagen"
                                />
                        </a>
                        <div class="Tarjeta-texto">
                            <p style="margin-top: 15px">
                                <strong>
                                    One Matrix 4 Star Really Wants To Join Keanu Reeves In John
                                    Wick
                                </strong>
                            </p>
                            <p class="lead" style="font-size: 15px">
                                This trend will continue with Lana Wachowski's The Matrix 4,
                                which will feature the return of a group of actors
                                <a class="linkColor" href="Home.html"
                                   >Sigue leyendo...</a
                                >
                            </p>
                        </div>

                        <div class="row empty"></div>
                        <div class="container row A-center">
                            <i class="fas fa-hand-point-up" :hover>11.3k</i>
                            <i class="fas fa-hand-point-down" :hover>3.2k</i>
                            <i class="fas fa-comment" :hover>138</i>
                            <i class="fas fa-ellipsis-h" :hover></i>
                        </div>
                    </div>

                    <!-- Tamaño celular-->
                    <div class="card mb-3 col-12 d-block d-sm-none">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <a  href="UnaNoticia.jsp" target="_blank">
                                    <img
                                        src="https://img.cinemablend.com/filter:scale/quill/4/5/7/3/9/6/4573966e4d7705252c319697471a53bb20b3e1d9.png?mw=600"
                                        class="card-img"
                                        alt="..."
                                        />
                                </a>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        Looks Like The Batman Is Going To Start Filming In The
                                        States
                                    </h5>
                                    <p class="card-text">Somebody light up the bat-Signal</p>
                                    <p class="card-text">
                                        <small class="text-muted">Last updated 3 mins ago</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-3 col-12 d-block d-sm-none">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <a  href="UnaNoticia.jsp" target="_blank">
                                    <img
                                        src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/2/8/d/5/b/1/28d5b1bea85d197f30133ddbe567c8cb30f3f230.png"
                                        class="card-img"
                                        alt="..."
                                        />
                                </a>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        One Matrix 4 Star Really Wants To Join Keanu Reeves In John
                                        Wick
                                    </h5>
                                    <p class="card-text">
                                        This trend will continue with Lana Wachowski's The Matrix 4,
                                        which will feature the return of a group of actors
                                    </p>
                                    <p class="card-text">
                                        <small class="text-muted">Last updated 3 mins ago</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--                     -->
        <!--      Noticias       -->
        <!--                     -->
        <div class="container">
            <h2 class="Subtitles">Noticias Recientes</h2>

            <div class="noticia">
                <span class="badge badge-info etiqueta">Peliculas</span>
                <div class="inline-flex">
                    <a  href="UnaNoticia.jsp" target="_blank">
                        <img class="img" src="https://img.cinemablend.com/filter:scale/quill/0/5/d/4/3/7/05d437f057866c5f7bd647d58bbc49603c13c5e5.jpg?mw=600" />
                    </a>
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
                    <a  href="UnaNoticia.jsp" target="_blank">
                        <img class="img" style="  object-position: 0% 25%;"
                             src="https://img.cinemablend.com/cdn-cgi/image/fit=cover,w=1500,h=1500//quill/2/4/d/6/0/3/24d603f66ebcbec26cb5dc57fc7a80591b5aeafa.jpg"
                             />
                    </a>
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

            <button
                type="button"
                style="margin-left: 50%"
                class="btn btn-primary uni"
                data-toggle="modal"
                data-target="#exampleModal"
                >
                Ver más
            </button>
        </div>
        <!-- Button trigger modal -->
        <button
            type="button"
            class="btn btn-primary"
            data-toggle="modal"
            data-target="#exampleModal"
            >
            visita esta página web
        </button>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
