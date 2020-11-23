<%-- 
    Document   : SignIn
    Created on : 21/11/2020, 12:13:26 PM
    Author     : Dell 66895
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Page</title>
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/login.css" />
    </head>
    <body>
        <div class="container">
            <!--Letras -->
            <h1 class="Subtitles">Registro</h1>
            <!-- icono -->
            <div class="icono">
                <img
                    class="icon"
                    src="Assets/KineCine.png"
                    alt="error-en-al-capa-8"
                    />
            </div>
            <!-- form-->

        </div>

        <div class="container peque">
            <form action="SignInController" method="POST" class="form-signin"  >

                <div class="form-label-group">
                    <label for="input">Nombre(s)</label>
                    <input type="text" name="nombre" id="input" class="form-control" placeholder="tu nombre" required required>

                </div>
                <div class="form-label-group">
                    <label for="input">Apellido(s)</label>
                    <input type="text" name="apellidos" id="input" class="form-control" placeholder="apellido(s)" required required>

                </div>


                <div class="form-label-group">
                    <label for="inputEmail">Correo Electrónico</label>
                    <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Ingrese aquí su correo" required autofocus>

                </div>

                <div class="form-label-group">
                    <label for="inputPassword">Contraseña</label>
                    <input type="password" name="password1" id="inputPassword" class="form-control" placeholder="Ingrese aquí su contraseña" required>

                </div>

                <div class="form-label-group">
                    <label for="inputPassword">Confirme su contraseña</label>
                    <input type="password" name="password2" id="inputPassword" class="form-control" placeholder="confirme" required required>

                </div>


                <div class="form-label-group">
                    <label for="input">Número de teléfono</label>
                    <input type="number" name="phoneNumb" id="input" class="form-control" placeholder="Número de teléfono" required autofocus>

                </div>


                <div class="form-label-group">
                    <label for="input">nombre de usuario</label>
                    <input type="text" name="username" id="input" class="form-control" placeholder="Nombre de usuario" required required>

                </div>


                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Acepto los terminos y condiciones.
                    </label>
                </div>
                <button   class="btn btn-lg btn-primary btn-block" type="submit">Registrarse</button>

                <p class="mt-5 mb-3 text-muted text-center">&copy;KineCine 2017-2020</p>
            </form>

        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
