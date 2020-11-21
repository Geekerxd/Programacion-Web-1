<%-- 
    Document   : UnaNoticia
    Created on : 21/11/2020, 09:40:44 AM
    Author     : Dell 66895
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Una Noticia</title>
        
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
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
            rel="stylesheet"
            />

        <!--bootstrap-->
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/ej-noticia.css" />
    </head>
    <body>
        
        
        
        
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

          <button class="btn btn-primary uni" type="submit">
            <i class="fas fa-search uni"></i>
          </button>
        </form>

        <a href="login.html">
          <img class="icon-link" src="Assets/pardo.JPG" alt="..." :hover />
        </a>
      </div>
    </nav>

    <!--                                        -->

    <div class="container">
      <p class="Ntitle">
        Se adelanta nuevo contenido de avatar a la secuela de James Cameron,
        pero no como usted pensaría
      </p>
      <div class="row">
       <b style="margin-left: 15px;" >

           <h6>Gonzalo Aguilar Galeana</h6>

       </b>

       

       
        
            <i  style="margin-left: 15px; " class="fas fa-grip-lines-vertical"></i>

            <h6 style=" color: #F29849 ;">Publicado Oct 12, 2020. 05:03pm </h6>
      </div>

<img  class="imagenLOL"src="https://img.cinemablend.com/filter:scale/quill/8/4/f/f/a/7/84ffa7a4ae32ca459933a250fa1e5ace7c089e62.jpg?mw=600" alt="...">

<p class="textito">
    No es exagerado decir que hemos estado esperando mucho tiempo para que continúe la franquicia Avatar. Normalmente, una secuela sigue a su predecesora solo unos años después, pero nos acercamos al undécimo aniversario del lanzamiento de Avatar, y pasarán otros dos años antes de que Avatar 2 finalmente llegue. Sin embargo, para aquellos de ustedes que anhelan nuevo contenido de Avatar mientras tanto, prepárense para ir a comprar cómics.

</p>
<div class="row A-left">
    <i class="fas fa-hand-point-up" :hover>10.5k</i>
    <i class="fas fa-hand-point-down" :hover>4.1k</i>
    <i class="fas fa-comment" :hover>25</i>
    <i class="fas fa-ellipsis-h" :hover></i>
    <p class="fecha">9 octubre, 2020</p>
  </div>


  <form class="Comments">
    <label for="fname">Comentar:</label>
    <input type="text" id="fname" name="fname"><br><br>

    
    <input type="submit" value="Submit">

    <div class="row B-left">
        <i class="fas fa-hand-point-up" :hover>10.5k</i>
        <i class="fas fa-hand-point-down" :hover>4.1k</i>
        <i class="fas fa-comment" :hover>25</i>
        <i class="fas fa-ellipsis-h" :hover></i>
        <p class="fecha">10 octubre, 2020</p>
      </div>
  </form>



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
