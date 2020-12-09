<%-- 
    Document   : ComentarioEditor
    Created on : 9/12/2020, 12:15:35 AM
    Author     : Dell 66895
--%>

<%@page import="com.mycompany.proyectofinaweb.modelos.Imagen"%>
<%@page import="com.mycompany.proyectofinaweb.DAO.NoticiaDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Noticia"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Comentario"%>



<%
   // List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
   // Noticia element = (Noticia) request.getAttribute("News");

   // String NombreCompl = NoticiaDAO.GetNameAutor(element.getIdUsuario());
    //List<Imagen> imagenes = (List<Imagen>) request.getAttribute("Images");
    //List<Comentario> coentarios = (List<Comentario>) request.getAttribute("Comentarios");

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
        <title>Comentario Editor Page</title>

        <link rel="stylesheet" href="css/ComEdi.css" />

    </head>
    <body>
        
        <h1>Comentario sobre el rechazo de la noticia:</h1>
        <form method="POST" action="ComentarioController" class="Comments" style="margin-top: 20px">
            <label for="fname">Comentar:</label>
            <br>

            <textarea type="text" id="fname" name="fname" placeholder="Escribe un comentario"></textarea>
            <!--  <input type="hidden" name="idNew" value="  -- element.getId() -- "> -->
            <input type="hidden" name="NombreUsu" value="<%= session.getAttribute("ELnombre")%>">
            <input type="hidden" name="ApellidoUsu" value="<%= session.getAttribute("LOSapellidos")%>">
            <input type="hidden" name="IdUsuario" value="<%= session.getAttribute("ELidusuarios")%>">

            <br><br>


            <input type="submit" class="btn btn-primary" value="Enviar Comentario">


        </form>

            


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
