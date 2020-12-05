<%-- 
    Document   : UnaNoticia
    Created on : 21/11/2020, 09:40:44 AM
    Author     : Dell 66895
--%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Comentario"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Imagen"%>
<%@page import="com.mycompany.proyectofinaweb.DAO.NoticiaDAO"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Noticia"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%
    List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
    Noticia element = (Noticia) request.getAttribute("New");

    String NombreCompl = NoticiaDAO.GetNameAutor(element.getIdUsuario());
    List<Imagen> imagenes = (List<Imagen>) request.getAttribute("Images");
    List<Comentario> coentarios = (List<Comentario>) request.getAttribute("Comentarios");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Una Noticia</title>

        <jsp:include page="header.jsp"/>

        <link rel="stylesheet" href="css/ej-noticia.css" />



    </head>
    <body> 
        <!-- esto es la barra de navegacion --> 
        <jsp:include page="NavBar.jsp"/> 
        <!--                                        --> 
        <div class="container">
            <p class="Ntitle"> <%=element.getTitle()%> </p>
            <div class="row">
                <b style="margin-left: 15px;" > 
                    <h6><%= NombreCompl%></h6> 
                </b> 
                <i  style="margin-left: 15px; " class="fas fa-grip-lines-vertical"></i>

                <h6 style=" color: #F29849 ;">Publicado <%= element.getFecha()%> </h6>
                <i  style="margin-left: 15px; " class="fas fa-grip-lines-vertical"></i>
                <b style="margin-left: 15px;" > 
                    <h6>Categoria: <%= element.getCategoria().getCategoryName()%></h6> 
                </b>
            </div>

            <img  class="prueba300" src="<%=element.getImageThumbnail()%> " alt="...">

            <p class="textito">
                <%= element.getContenido()%>
            </p>



            <%
                int i = 0;
                for (Imagen element2 : imagenes) {
                    if (i != 0) {
            %>
            <div style="margin-bottom: 10px">
                <img  class="prueba300"src="<%=element2.getImagePath()%> " alt="...">
            </div>
            <%
                    }
                    i = i + 1;
                }
            %>



            <div class="row A-left"style="margin-top: 20px; margin-left: 10px">
                <i class="fas fa-hand-point-up" :hover><%= element.getLikes()%></i>
                <i class="fas fa-hand-point-down" :hover><%= element.getDislikes()%></i>
                <i class="fas fa-comment" :hover>falta</i>
                <i class="fas fa-ellipsis-h" :hover></i> 
            </div>


            <form method="POST" action="ComentarioController" class="Comments" style="margin-top: 20px">
                <label for="fname">Comentar:</label>
                <br>
                <input placeholder="Escribe tu nombre anonimo" type="text" name="Anonimo" style="width: 300px">
                <textarea type="text" id="fname" name="fname" placeholder="Escribe un comentario"></textarea>
                <input type="hidden" name="idNew" value="<%= element.getId()%>">
                <input type="hidden" name="NombreUsu" value="<%= session.getAttribute("ELnombre")%>">
                <input type="hidden" name="ApellidoUsu" value="<%= session.getAttribute("LOSapellidos")%>">
                <input type="hidden" name="IdUsuario" value="<%= session.getAttribute("ELidusuarios")%>">

                <br><br>


                <input type="submit" class="btn btn-primary" value="Enviar Comentario">


            </form>
            <div class="col-12 commentary">
                <h3>Comentarios</h3>

            </div>


            <%for (Comentario comment : coentarios) {%>
            <div style="display:block;  margin-bottom: 30px"> <!--  un comentario -->
                <div class="media"> 
                    <img class="icon-link align-self-start mr-3" src="<%=comment.getElUsuario().getFoto()%>" alt="..." >
                    <div class="media-body">

                        <h5 class="mt-0"><%=comment.getElUsuario().getNombre()%> <%=comment.getElUsuario().getApellidos()%> </h5>
                        <%
                            if (comment.getElUsuario().getIDusutype() == 1) {//es admin
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
                        <em style=" color: #F29849; font-size: 20px ">  <sup> (admin) </sup></em>
                        <%
                        } else if (comment.getElUsuario().getIDusutype() == 2) {//es registrado
                        %>

                        <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><g><rect fill="none" height="24" width="24"/></g><g><path d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M10.09,16.72l-3.8-3.81l1.48-1.48l2.32,2.33 l5.85-5.87l1.48,1.48L10.09,16.72z"/></g></svg>
                        <em style=" color: #F29849; font-size: 20px ">  <sup> (registrado) </sup></em>
                        <%
                        } else if (comment.getElUsuario().getIDusutype()== 3) {//es Moderador
                        %>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M11.99 2c-5.52 0-10 4.48-10 10s4.48 10 10 10 10-4.48 10-10-4.48-10-10-10zm3.61 6.34c1.07 0 1.93.86 1.93 1.93 0 1.07-.86 1.93-1.93 1.93-1.07 0-1.93-.86-1.93-1.93-.01-1.07.86-1.93 1.93-1.93zm-6-1.58c1.3 0 2.36 1.06 2.36 2.36 0 1.3-1.06 2.36-2.36 2.36s-2.36-1.06-2.36-2.36c0-1.31 1.05-2.36 2.36-2.36zm0 9.13v3.75c-2.4-.75-4.3-2.6-5.14-4.96 1.05-1.12 3.67-1.69 5.14-1.69.53 0 1.2.08 1.9.22-1.64.87-1.9 2.02-1.9 2.68zM11.99 20c-.27 0-.53-.01-.79-.04v-4.07c0-1.42 2.94-2.13 4.4-2.13 1.07 0 2.92.39 3.84 1.15-1.17 2.97-4.06 5.09-7.45 5.09z"/></svg>
                        <em style=" color: #F29849; font-size: 20px ">  <sup> (moderador) </sup></em>
                        <%
                        } else if (comment.getElUsuario().getIDusutype()== 4) {//es Editor
                        %>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M21 5v14h2V5h-2zm-4 14h2V5h-2v14zM14 5H2c-.55 0-1 .45-1 1v12c0 .55.45 1 1 1h12c.55 0 1-.45 1-1V6c0-.55-.45-1-1-1zM8 7.75c1.24 0 2.25 1.01 2.25 2.25S9.24 12.25 8 12.25 5.75 11.24 5.75 10 6.76 7.75 8 7.75zM12.5 17h-9v-.75c0-1.5 3-2.25 4.5-2.25s4.5.75 4.5 2.25V17z"/></svg>
                        <em style=" color: #F29849; font-size: 20px ">  <sup> (editor) </sup></em>
                        <%
                        } else if (comment.getElUsuario().getIDusutype() == 5) {//es Creador de contenido
                        %>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#F29849" width="24px" height="24px"><path d="M0 0h24v24H0z" fill="none"/><path d="M19 3h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 0c.55 0 1 .45 1 1s-.45 1-1 1-1-.45-1-1 .45-1 1-1zm0 4c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm6 12H6v-1.4c0-2 4-3.1 6-3.1s6 1.1 6 3.1V19z"/></svg>
                        <em style=" color: #F29849; font-size: 20px ">  <sup> (creador de contenido) </sup></em>
                        <%
                            }
                        %>


                        <em style=" color: #F29849 ">  <sup><%=  comment.getFecha()%>  </sup></em>


                        <p><%=comment.getContenido()%></p>

                    </div> 
                </div>
                <div class="media" style="margin-left: 85px;">
                    <i class="fas fa-hand-point-up" :hover><%= comment.getLikes()%></i>
                    <i class="fas fa-hand-point-down" :hover><%= comment.getDislikes()%></i> 


                    <div class="dropdown">
                        <i class="fas fa-ellipsis-h dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" :hover>

                        </i>


                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="DeleteCommentaryController?id=<%= comment.getId()%>&idNew=<%=element.getId()%>">Borrar comentario</a>
                            <a class="dropdown-item" href="#">Banear a usuario</a>
                            <a class="dropdown-item" href="#">Mandar stike al usuario</a>
                        </div>


                    </div>


                </div>


            </div><!--  acaba el comentario -->

            <% }%>





        </div>


        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" >
            visita esta página web
        </button>




        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script> 


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


    </body>
</html>
