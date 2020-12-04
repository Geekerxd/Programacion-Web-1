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


            <%for (Comentario comment : coentarios ) {%>
            <div style="display:block;  margin-bottom: 30px"> <!--  un comentario -->
                <div class="media"> 
                    <img class="icon-link align-self-start mr-3" src="<%=comment.getElUsuario().getFoto()  %>" alt="..." >
                    <div class="media-body">
                        <h5 class="mt-0"><%=comment.getElUsuario().getNombre()  %> <%=comment.getElUsuario().getApellidos() %> </h5>
                        <p><%=comment.getContenido() %></p>

                    </div> 
                </div>
                <div class="media" style="margin-left: 85px;">
                    <i class="fas fa-hand-point-up" :hover><%= comment.getLikes() %></i>
                    <i class="fas fa-hand-point-down" :hover><%= comment.getDislikes() %></i> 
                    <i class="fas fa-ellipsis-h" :hover></i> 
                </div>
            </div>

            <% }%>





        </div>


        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" >
            visita esta página web
        </button>




        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script> 
    </body>
</html>
