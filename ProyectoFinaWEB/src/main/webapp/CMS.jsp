<%-- 
    Document   : perfilUsuario
    Created on : 22/11/2020, 09:23:19 PM
    Author     : Dell 66895
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <jsp:include page="header.jsp"/>

        <link rel="stylesheet" href="css/cms.css" />

        <title>Perfil de Usuario Page</title>

    </head>
    <body>
        <jsp:include page="NavBar.jsp"/>

        <div class="scontainer" >
            <div class="container" ></div>
            <div class="pos-f-t" >
                <div class="collapse" id="navbarToggleExternalContent">
                    <div class="bg-dark p-4 "  id="unico">
                        <h4 class="text-blue"> Gestor de noticias </h4>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-Nueva-tab" data-toggle="pill" href="#v-pills-Nueva"
                               role="tab" aria-controls="v-pills-Nueva" aria-selected="true">Nueva</a>
                            <a class="nav-link" id="v-pills-Edición-tab" data-toggle="pill" href="#v-pills-Edición"
                               role="tab" aria-controls="v-pills-Edición" aria-selected="false">Edición</a>
                            <a class="nav-link" id="v-pills-Solicitudes-tab" data-toggle="pill" href="#v-pills-Solicitudes"
                               role="tab" aria-controls="v-pills-Solicitudes" aria-selected="false">Solicitudes</a>
                            <a class="nav-link" id="v-pills-Gestor-tab" data-toggle="pill" href="#v-pills-Gestor" role="tab"
                               aria-controls="v-pills-Gestor" aria-selected="false">Gestor de solicitudes</a>
                        </div>
                    </div>
                </div>
                <nav class="navbar navbar-dark bg-dark">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                            aria-expanded="false" aria-label="Toggle navigation" onclick="tamaño()">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </nav>
            </div>
        </div>
        <!-- 
    
        -->


        <div class="acontainer" id="acontainer">
            <div class="container" style="background-color: white;">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-Nueva" role="tabpanel"
                         aria-labelledby="v-pills-Nueva-tab">
                        <form>
                            <div class="form-group row">
                                <label for="inputTitulo" class="col-sm-2 col-form-label">Título</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputTitulo"
                                           placeholder="Título de la noticia">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputDescripción" class="col-sm-2 col-form-label">Descripción</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputDescripción"
                                           placeholder="Descripción corta">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputNoticia" class="col-sm-2 col-form-label">Noticia</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputNoticia" placeholder="Noticia">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputCategoria" class="col-sm-2 col-form-label">Categoría</label>
                                <div class="col-sm-10">
                                    <select id="inputCategoria" class="form-control">
                                        <option selected>Escoge una categoría</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Imagen</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                                    <label class="custom-file-label" for="inputGroupFile01">Abrir archivos</label>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Video</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                                    <label class="custom-file-label" for="inputGroupFile01">Abrir archivos</label>
                                </div>
                            </div>
                            <button type="solicitar" class="btn btn-primary" data-toggle="modal" data-target="#solicitudenviada" id="solicitar">
                                Solicitar
                            </button>
                        </form>
                        <div class="modal fade" id="solicitudenviada" tabindex="-1" role="dialog" aria-labelledby="solicitudenviada" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="solicitudenviada">Solicitud enviada</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Tu solicitud fue enviada
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-Edición" role="tabpanel" aria-labelledby="v-pills-Edición-tab">
                        <nav class="navbar navbar-light bg-light">
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </nav>
                        <div class="card-group">
                            <div class="card">
                                <img class="card-img-top"
                                     src="https://cnet1.cbsistatic.com/img/IIrUqG6HhZogVkw5G6Z2Lpx30e8=/940x0/2020/06/20/ed17b381-622d-4ec4-98a9-393017a23381/dune-2020-remake-4.jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This content is a little bit longer.</p>

                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Ver</button>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModalCenter">
                                        Editar
                                    </button>

                                </div>
                            </div>
                            <div class="card">
                                <img class="card-img-top"
                                     src="https://cnet1.cbsistatic.com/img/IIrUqG6HhZogVkw5G6Z2Lpx30e8=/940x0/2020/06/20/ed17b381-622d-4ec4-98a9-393017a23381/dune-2020-remake-4.jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This card has supporting text below as a natural lead-in to
                                        additional content.</p>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Ver</button>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModalCenter">
                                        Editar
                                    </button>

                                </div>
                            </div>
                            <div class="card">
                                <img class="card-img-top"
                                     src="https://cnet1.cbsistatic.com/img/IIrUqG6HhZogVkw5G6Z2Lpx30e8=/940x0/2020/06/20/ed17b381-622d-4ec4-98a9-393017a23381/dune-2020-remake-4.jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This card has even longer content than the first to
                                        show that equal height action.</p>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Ver</button>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModalCenter">
                                        Editar
                                    </button>

                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                             aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Edición</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group row">
                                                <label for="inputTitulo" class="col-sm-2 col-form-label">Nuevo
                                                    título</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="inputTitulo"
                                                           placeholder="Título de la noticia">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputDescripción" class="col-sm-2 col-form-label">Nueva
                                                    descripción</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="inputDescripción"
                                                           placeholder="Descripción corta">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputNoticia" class="col-sm-2 col-form-label">Noticia</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="inputNoticia"
                                                           placeholder="Noticia">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputCategoria"
                                                       class="col-sm-2 col-form-label">Categoría</label>
                                                <div class="col-sm-10">
                                                    <select id="inputCategoria" class="form-control">
                                                        <option selected>Escoge una categoría</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Imagen</span>
                                                </div>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                                                    <label class="custom-file-label" for="inputGroupFile01">Abrir
                                                        archivos</label>
                                                </div>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Video</span>
                                                </div>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                                                    <label class="custom-file-label" for="inputGroupFile01">Abrir
                                                        archivos</label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="v-pills-Solicitudes" role="tabpanel"
                         aria-labelledby="v-pills-Solicitudes-tab">
                        <nav class="navbar navbar-light bg-light">
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </nav>
                        <div class="solicitudes">
                            <div class="card">
                                <div class="card-header">
                                    Estado <svg class="estado" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="green" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/></svg>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Special title treatment</h5>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional
                                        content.
                                    </p>
                                    <a href="#" class="btn btn-primary">Ver</a>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    Estado <svg class="estado" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><g><rect fill="none" height="24" width="24"/></g><g><path d="M14.05,17.58l-0.01,0.01l-2.4-2.4l1.06-1.06l1.35,1.35L16.54,13l1.06,1.06 l-3.54,3.54L14.05,17.58z M12,2C6.5,2,2,6.5,2,12s4.5,10,10,10s10-4.5,10-10S17.5,2,12,2z M7.34,6.28l1.41,1.41l1.41-1.41 l1.06,1.06L9.81,8.75l1.41,1.41l-1.06,1.06L8.75,9.81l-1.41,1.41l-1.06-1.06l1.41-1.41L6.28,7.34L7.34,6.28z M12,20 c-2.2,0-4.2-0.9-5.7-2.3L17.7,6.3C19.1,7.8,20,9.8,20,12C20,16.4,16.4,20,12,20z" fill-rule="evenodd"/></g></svg>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Special title treatment</h5>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional
                                        content.
                                    </p>
                                    <a href="#" class="btn btn-primary">Ver</a>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    Estado <svg class="estado" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="red" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm5 13.59L15.59 17 12 13.41 8.41 17 7 15.59 10.59 12 7 8.41 8.41 7 12 10.59 15.59 7 17 8.41 13.41 12 17 15.59z"/></svg>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Special title treatment</h5>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional
                                        content.
                                    </p>
                                    <a href="#" class="btn btn-primary">Ver</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-Gestor" role="tabpanel" aria-labelledby="v-pills-Gestor-tab">
                        <nav class="navbar navbar-light bg-light">
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </nav>
                        <div class="card">
                            <div class="card-header">
                                Solicitante <button type="button" class="btn btn-success">Aceptar</button> <button type="button" class="btn btn-danger">Rechazar</button>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <a href="#" class="btn btn-primary">Ver</a>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                Solicitante <button type="button" class="btn btn-success">Aceptar</button> <button type="button" class="btn btn-danger">Rechazar</button>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <a href="#" class="btn btn-primary">Ver</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>