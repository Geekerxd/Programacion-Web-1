<%-- 
    Document   : inicio
    Created on : 19/11/2020, 04:46:03 PM
    Author     : Dell 66895
--%>


<%@page import="com.mycompany.proyectofinaweb.modelos.Noticia"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
    List<Noticia> news = (List<Noticia>) request.getAttribute("News");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home KineCine Page</title>

        <jsp:include page="header.jsp"/>

        <link rel="stylesheet" href="css/Home.css" />

    </head>
    <body>
        <div style="display: none;"> <!-- style="display: block;"-->
            <h3>ID: <%=  session.getAttribute("ELidusuarios")%></h3>
            <h3>Correo: <%=  session.getAttribute("ELcorreo")%></h3>
            <h3>Nombre: <%=  session.getAttribute("ELnombre")%></h3>
            <h3>Apellidos: <%=  session.getAttribute("LOSapellidos")%></h3>

            <h3>Tipo de Usuario: <%=  session.getAttribute("ELtipousu")%></h3>
            <h3>Nombre de usuario: <%=  session.getAttribute("ELusername")%></h3>
            <h3>Foto: <%=  session.getAttribute("Lafoto")%></h3>
        </div>


        <!--  <a  href="https://www.artstation.com/artwork/L35Dew" target="_blank" >Hola mundo!</a>
        -->



        <jsp:include page="NavBar.jsp"/>

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


            <%
                for (Noticia element : news) {
            %>
            <div class="noticia">
                <span class="badge badge-info etiqueta"><%= element.getCategoria().getCategoryName()%></span>
                <div class="inline-flex">
                    <a  href="ShowNewsController?id=<%= element.getId()%>">
                        <img class="img" src="<%= element.getImageThumbnail()%>" alt="Assets/KineCineNaranja.png"/>
                    </a>
                    <div class="texto"><!--  Tarjeta-texto-->


                        <p style="margin-top: 0px">
                            <strong><%= element.getTitle()%>  </strong>
                        </p>
                        <p class="lead" style="font-size: 15px"><%= element.getDescripcion()%></p>
                        <a class="linkColor"  href="ShowNewsController?id=<%= element.getId()%>" >Sigue leyendo...</a > 
                    </div>
                </div>
                <div class="row A-left">
                    <i class="fas fa-hand-point-up" :hover><%= element.getLikes()%></i>
                    <i class="fas fa-hand-point-down" :hover><%= element.getDislikes()%></i>
                    <i class="fas fa-comment" :hover>falta</i>
                    <i class="fas fa-ellipsis-h" :hover></i>
                    <p class="fecha"><%= element.getFecha()%></p>
                </div>
            </div>

            <%
                }
            %>

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
