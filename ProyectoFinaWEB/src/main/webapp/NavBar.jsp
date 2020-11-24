<%-- 
    Document   : NavBar
    Created on : 22/11/2020, 08:29:05 PM
    Author     : Dell 66895
--%><%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinaweb.modelos.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    List<Categoria> categories = (List<Categoria>) request.getAttribute("Categories");
%>
<nav
    class="navbar navbar-expand-lg navbar-dark bg-dark"
    style="border-bottom: solid 1px #275d8c59"
    >
    <a class="navbar-brand" id="azulado" href="index.jsp" :hover>
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

                    <a class="dropdown-item" href="AllNoticias.jsp">Todas las noticias</a>

                    <div class="dropdown-divider"></div>

                    <%
                        if (categories != null) {
                            for (Categoria category : categories) {
                    %>
                    <a class="dropdown-item" href="#"><%= category.getCategoryName()%></a>
                    <%
                            }
                        }
                    %>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Otros...</a>
                   
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

        <% if (session.getAttribute("ELtipousu") == null) { %>


        <a href="LogIn.jsp" class="LogIn-text " style="color: #F29849; margin-left: 20px; " >
            Log In
        </a>

        <button type="button"
                class="btn btn-primary SignIn" style="margin-left: 15px; "
                >     
            <a href="SignIn.jsp" style="color: white;">Sign In</a>

        </button>

        <% } else {  %>

        <a href="perfilUsuario.jsp" style=" margin-left: 20px;" >
            <% if (session.getAttribute("Lafoto") == null) { %>
            <img class="icon-link" src="Assets/NoPhoto2.jpg" alt="..." :hover />
            <%} else { %>
            <img class="icon-link" src="Assets/pardo.JPG" alt="..." :hover />
            <% }%>

            <p style="color: #275D8C; margin-bottom: 0px">  <%= session.getAttribute("ELusername")%></p>
        </a>

        <%}%>
    </div>
</nav>