<%-- 
    Document   : perfilUsuario
    Created on : 22/11/2020, 09:47:32 PM
    Author     : Dell 66895
--%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Noticia"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%
    List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
    List<Noticia> susNews = (List<Noticia>) request.getAttribute("News");

    List<Noticia> FavNews = (List<Noticia>) request.getAttribute("NotiFav");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil De Usuario</title>
        <jsp:include page="header.jsp"/>

        <link rel="stylesheet" href="css/perfildeusuario.css" />
    </head>
    <body>
        <jsp:include page="NavBar.jsp"/>

        <div class="container">
            <div class="container2" style="background-color: #ffffff">



                <div >

                    <img
                        class="card-img-top"
                        src="https://assets.sensacine.com/skin/img/userprofile-cover-default-43b92a5c13.png"
                        alt="Card image cap"
                        />

                </div>




                <div >
                    <% if (session.getAttribute("Lafoto") == null) { %>
                    <img class="avatar"
                         src="Assets/NoPhoto2.jpg"
                         alt="avatar"/>
                    <%} else {%>
                    <img class="avatar"
                         src="<%=  session.getAttribute("Lafoto")%>"
                         alt="avatar"/>
                    <% }%>


                </div>

                <h2 class="username">
                    <%=  session.getAttribute("ELnombre")%> <%=  session.getAttribute("LOSapellidos")%>

                    <%
                        if ((int) session.getAttribute("ELtipousu") == 1) {//es admin
                    %>
                    <!-- si er registrado -->
                    <svg xmlns="http://www.w3.org/2000/svg"
                         viewBox="0 0 24 24"
                         fill="#F29849"
                         width="24px"
                         height="24px" >
                    <path d="M0 0h24v24H0z" fill="none" />
                    <path d="M12 1L3 5v6c0 5.55 3.84 10.74 9 12 5.16-1.26 9-6.45 9-12V5l-9-4zm-2 16l-4-4 1.41-1.41L10 14.17l6.59-6.59L18 9l-8 8z"
                          />
                    </svg>
                    <!--          -->
                    <%
                    } else if ((int) session.getAttribute("ELtipousu") == 2) {//es registrado
                    %>

                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><g><rect fill="none" height="24" width="24"/></g><g><path d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M10.09,16.72l-3.8-3.81l1.48-1.48l2.32,2.33 l5.85-5.87l1.48,1.48L10.09,16.72z"/></g></svg>
                    <em style=" color: #F29849; font-size: 20px ">  <sup> (registrado) </sup></em>
                    <%
                    } else if ((int) session.getAttribute("ELtipousu") == 3) {//es Moderador
                    %>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M11.99 2c-5.52 0-10 4.48-10 10s4.48 10 10 10 10-4.48 10-10-4.48-10-10-10zm3.61 6.34c1.07 0 1.93.86 1.93 1.93 0 1.07-.86 1.93-1.93 1.93-1.07 0-1.93-.86-1.93-1.93-.01-1.07.86-1.93 1.93-1.93zm-6-1.58c1.3 0 2.36 1.06 2.36 2.36 0 1.3-1.06 2.36-2.36 2.36s-2.36-1.06-2.36-2.36c0-1.31 1.05-2.36 2.36-2.36zm0 9.13v3.75c-2.4-.75-4.3-2.6-5.14-4.96 1.05-1.12 3.67-1.69 5.14-1.69.53 0 1.2.08 1.9.22-1.64.87-1.9 2.02-1.9 2.68zM11.99 20c-.27 0-.53-.01-.79-.04v-4.07c0-1.42 2.94-2.13 4.4-2.13 1.07 0 2.92.39 3.84 1.15-1.17 2.97-4.06 5.09-7.45 5.09z"/></svg>
                    <em style=" color: #F29849; font-size: 20px ">  <sup> (moderador) </sup></em>
                    <%
                    } else if ((int) session.getAttribute("ELtipousu") == 4) {//es Editor
                    %>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M21 5v14h2V5h-2zm-4 14h2V5h-2v14zM14 5H2c-.55 0-1 .45-1 1v12c0 .55.45 1 1 1h12c.55 0 1-.45 1-1V6c0-.55-.45-1-1-1zM8 7.75c1.24 0 2.25 1.01 2.25 2.25S9.24 12.25 8 12.25 5.75 11.24 5.75 10 6.76 7.75 8 7.75zM12.5 17h-9v-.75c0-1.5 3-2.25 4.5-2.25s4.5.75 4.5 2.25V17z"/></svg>
                    <em style=" color: #F29849; font-size: 20px ">  <sup> (editor) </sup></em>
                    <%
                    } else if ((int) session.getAttribute("ELtipousu") == 5) {//es Creador de contenido
                    %>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M19 3h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 0c.55 0 1 .45 1 1s-.45 1-1 1-1-.45-1-1 .45-1 1-1zm0 4c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm6 12H6v-1.4c0-2 4-3.1 6-3.1s6 1.1 6 3.1V19z"/></svg>
                    <em style=" color: #F29849; font-size: 20px ">  <sup> (creador de contenido) </sup></em>
                    <%
                        }
                    %>


                </h2>

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a
                            class="nav-link active"
                            id="inicio-tab"
                            data-toggle="tab"
                            href="#inicio"
                            role="tab"
                            aria-controls="inicio"
                            aria-selected="true"
                            >Inicio</a
                        >
                    </li>
                    <%
                        if ((int) session.getAttribute("ELtipousu") == 1 || (int) session.getAttribute("ELtipousu") == 4 || (int) session.getAttribute("ELtipousu") == 5) {//es admin
                    %>

                    <li class="nav-item">
                        <a
                            class="nav-link"
                            id="noticias-tab"
                            data-toggle="tab"
                            href="#noticias"
                            role="tab"
                            aria-controls="noticias"
                            aria-selected="false"
                            >Mis noticias</a
                        >
                    </li>
                    <%
                        }
                    %>



                    <li class="nav-item">
                        <a
                            class="nav-link"
                            id="informacion-tab"
                            data-toggle="tab"
                            href="#informacion"
                            role="tab"
                            aria-controls="informacion"
                            aria-selected="false"
                            >Información</a
                        >
                    </li>
                    <li class="nav-item">
                        <a
                            class="nav-link"
                            id="ajustes-tab"
                            data-toggle="tab"
                            href="#ajustes"
                            role="tab"
                            aria-controls="ajustes"
                            aria-selected="false"
                            >Ajustes</a
                        >
                    </li>
                    <li class="nav-item">
                        <a
                            class="nav-link"
                            id="LogOut-tab"
                            data-toggle="tab"
                            href="#LogOut"
                            role="tab"
                            aria-controls="LogOut"
                            aria-selected="false"
                            >Salir</a
                        >
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div
                        class="tab-pane fade show active"
                        id="inicio"
                        role="tabpanel"
                        aria-labelledby="inicio-tab"
                        >

                        <h3> Noticias marcadas:</h3>

                        <div class="row" >

                            <%
                                for (Noticia element2 : FavNews) {
                            %>
                            <div class="card" style="width: 18rem">
                                <img style=" object-fit: cover;    object-position: 50% 0;    height: 200px;"
                                    class="card-img-top"
                                    src="<%=element2.getImageThumbnail()%>"
                                    alt="Card image cap"
                                    />
                                <div class="card-body">
                                    <details>
                                        <summary class="card-title">Ver titulo</summary>
                                        <p><%=element2.getTitle()%></p>
                                    </details>

                                    <details>
                                        <summary class="card-title">Ver Descripción</summary>
                                        <p class="card-text">
                                            <%=element2.getDescripcion()%>
                                        </p>
                                    </details>

                                    <a href="ShowNewsController?id=<%= element2.getId()%>"  class="btn btn-primary">Ver</a>
                                </div>
                            </div>

                            <%
                                }
                            %>

                        </div>
                    </div>
                    <div
                        class="tab-pane fade"
                        id="noticias"
                        role="tabpanel"
                        aria-labelledby="noticias-tab"
                        >



                        <a href="AddNewsController?id=<%= session.getAttribute("ELidusuarios")%>">
                            <button
                                type="button"
                                class="btn btn-primary"
                                id="gotogestor"
                                style="margin-right: auto; margin-left: auto" 
                                >
                                Gestor de noticias
                            </button>


                        </a>


                        <h3> Mis noticias:</h3>
                        <%
                            for (Noticia element : susNews) {
                        %>

                        <div class="card">

                            <div class="card-body">
                                <h5 class="card-title"><%= element.getTitle()%></h5>
                                <p class="card-text"><%= element.getDescripcion()%>
                                </p>
                                <a  href="ShowNewsController?id=<%= element.getId()%>" class="btn btn-primary">Ver</a>
                            </div>
                        </div>

                        <%
                            }
                        %>

                    </div>
                    <div
                        class="tab-pane fade"
                        id="informacion"
                        role="tabpanel"
                        aria-labelledby="informacion-tab"
                        >

                        <form action="PerfilImagen" method="POST" enctype="multipart/form-data">

                            <div class="form-group" >
                                <label for="image">Cambiar foto de perfil:</label>
                                <input type="file" name="image" id="image" class="form-control" required>
                                <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                            </div> 
                            <input type="hidden" name="idUsuario" value="<%= session.getAttribute("ELidusuarios")%>">

                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Actualizar imagen">
                                <!--<input type="submit" class="btn btn-primary" data-toggle="modal" data-target="#solicitudenviada" id="solicitar"value="Solicitar">-->
                            </div>
                        </form>

                    </div>
                    <div
                        class="tab-pane fade"
                        id="ajustes"
                        role="tabpanel"
                        aria-labelledby="ajustes-tab"
                        >
                        <form class="ajustes">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label"
                                       >ID de Usuario</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        class="form-control"
                                        id="inputEmail3"
                                        placeholder="ID"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label"
                                       >Nombre</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        class="form-control"
                                        id="inputEmail3"
                                        placeholder="Nombre"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label"
                                       >Apellido</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        class="form-control"
                                        id="inputEmail3"
                                        placeholder="Apellido"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label"
                                       >Descripción</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        class="form-control"
                                        id="inputEmail3"
                                        placeholder="Descripción"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="colFormLabel" class="col-sm-2 col-form-label"
                                       >Email</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        type="email"
                                        class="form-control"
                                        id="colFormLabel"
                                        placeholder="Email"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label"
                                       >Nueva Contraseña</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        type="password"
                                        class="form-control"
                                        id="inputPassword3"
                                        placeholder="Contraseña"
                                        />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label"
                                       >Confirmar Contraseña</label
                                >
                                <div class="col-sm-10">
                                    <input
                                        type="password"
                                        class="form-control"
                                        id="inputPassword3"
                                        placeholder="Contraseña"
                                        />
                                </div>
                            </div>
                        </form>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                    <div
                        class="tab-pane fade"
                        id="LogOut"
                        role="tabpanel"
                        aria-labelledby="LogOut-tab"
                        >

                        <form method="post" action="LogOffController">

                            <input  type="submit"  action="Cerrar Sesion" value="Log Out" class="btn btn-primary " style="color:  white; margin-left: 40%; margin-top: 10px; padding-left: 30px;padding-right: 30px">


                        </form>




                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
