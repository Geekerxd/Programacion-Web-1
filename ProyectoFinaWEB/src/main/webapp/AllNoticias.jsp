<%-- 
    Document   : AllNoticias
    Created on : 23/11/2020, 01:31:43 PM
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

                <div class="container">
                   


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
