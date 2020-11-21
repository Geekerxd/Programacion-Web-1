<%-- 
    Document   : LogIn
    Created on : 21/11/2020, 12:07:17 PM
    Author     : Dell 66895
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In Page</title>
         <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/login.css" />
    </head>
    <body>
        
      <div class="container">
            <!--Letras -->
            <h1 class="Subtitles">Ingresar</h1>
            <!-- icono -->
            <div class="icono">
                <img
                    class="icon"
                    src="Assets/KineCineNaranja.png"
                    alt="error-en-al-capa-8"
                    />
            </div>
            <!-- form-->

        </div>


        <div class="container peque">
            <form action="LogInController" method="POST" class="form-signin"  >


                <div class="form-label-group">
                    <label for="inputEmail">Correo Electrónico</label>
                    <input type="email" name="username" id="inputEmail" class="form-control" placeholder="Ingrese aquí su correo" required autofocus>

                </div>

                <div class="form-label-group">
                    <label for="inputPassword">Contraseña</label>
                    <input type="password" name="password"  id="inputPassword" class="form-control" placeholder="Ingrese aquí su contraseña" required>

                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
                ¿Eres nuevo?
                <a class="color2" href="SignIn.jsp"
                   >registrate aquí</a
                >
                <p class="mt-5 mb-3 text-muted text-center">&copy;KineCine 2017-2020</p>
            </form>

        </div>


    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
