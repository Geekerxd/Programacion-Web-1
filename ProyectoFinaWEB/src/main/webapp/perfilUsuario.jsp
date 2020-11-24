<%-- 
    Document   : perfilUsuario
    Created on : 22/11/2020, 09:47:32 PM
    Author     : Dell 66895
--%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%
    List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
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
                <div class="pphoto">
                    <img
                        class="card-img-top"
                        src="https://assets.sensacine.com/skin/img/userprofile-cover-default-43b92a5c13.png"
                        alt="Card image cap"
                        />
                    <span class="tooltiptext">Editar</span>
                </div>

                <div class="pphoto">
                    <% if (session.getAttribute("Lafoto") == null) { %>
                    <img class="avatar"
                         src="Assets/NoPhoto2.jpg"
                         alt="avatar"/>
                    <%} else { %>
                    <img class="avatar"
                         src="Assets/pardo.JPG"
                         alt="avatar"/>
                    <% }%>



                    <span class="tooltiptext">Editar</span>
                </div>

                <h2 class="username">
                    <%=  session.getAttribute("ELnombre")%> <%=  session.getAttribute("LOSapellidos")%>
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="#F29849"
                        width="24px"
                        height="24px"
                        >
                    <path d="M0 0h24v24H0z" fill="none" />
                    <path
                        d="M12 1L3 5v6c0 5.55 3.84 10.74 9 12 5.16-1.26 9-6.45 9-12V5l-9-4zm-2 16l-4-4 1.41-1.41L10 14.17l6.59-6.59L18 9l-8 8z"
                        />
                    </svg>
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
                        <div class="card" style="width: 18rem">
                            <img
                                class="card-img-top"
                                src="https://cnet1.cbsistatic.com/img/IIrUqG6HhZogVkw5G6Z2Lpx30e8=/940x0/2020/06/20/ed17b381-622d-4ec4-98a9-393017a23381/dune-2020-remake-4.jpg"
                                alt="Card image cap"
                                />
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">
                                    Some quick example text to build on the card title and make up
                                    the bulk of the card's content.
                                </p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div
                        class="tab-pane fade"
                        id="noticias"
                        role="tabpanel"
                        aria-labelledby="noticias-tab"
                        >
                        <button
                            type="button"
                            class="btn btn-primary"
                            id="gotogestor"
                            style="margin-right: auto; margin-left: auto"
                            onclick="location.href = 'CMS.jsp'"
                            >
                            Gestor de noticias
                        </button>
                        <div class="card">
                            <div class="card-header">Featured</div>
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">
                                    With supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <a href="#" class="btn btn-primary">Ver</a>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">Featured</div>
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">
                                    With supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <a href="#" class="btn btn-primary">Ver</a>
                            </div>
                        </div>
                    </div>
                    <div
                        class="tab-pane fade"
                        id="informacion"
                        role="tabpanel"
                        aria-labelledby="informacion-tab"
                        >
                        Descripción
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
