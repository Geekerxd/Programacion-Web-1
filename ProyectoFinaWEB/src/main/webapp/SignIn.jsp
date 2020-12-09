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

        <script src="js/signinValidation.js" type="text/javascript"></script>

        <style>
            body {font-family: Arial, Helvetica, sans-serif;}

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 100px; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content */
            .modal-content {
                position: relative;
                background-color: #fefefe;
                margin: auto;
                padding: 0;
                border: 1px solid #888;
                width: 80%;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: animatetop;
                -webkit-animation-duration: 0.4s;
                animation-name: animatetop;
                animation-duration: 0.4s
            }

            /* Add Animation */
            @-webkit-keyframes animatetop {
                from {top:-300px; opacity:0} 
                to {top:0; opacity:1}
            }

            @keyframes animatetop {
                from {top:-300px; opacity:0}
                to {top:0; opacity:1}
            }

            /* The Close Button */
            .close {
                color: white;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }

            .modal-header {
                padding: 2px 16px;
                background-color: #5cb85c;
                color: white;
            }

            .modal-body {padding: 2px 16px;}

            .modal-footer {
                padding: 2px 16px;
                background-color: #5cb85c;
                color: white;
            }
        </style>

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
            <form name="signinForm" action="SignInController" method="POST" class="form-signin" onsubmit=" return Validacion()" >

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


                <button  id="myBtn" class="btn btn-lg btn-primary btn-block" type="submit">Registrarse</button>



                <!-- The Modal -->
                <div id="myModal" class="modal">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                    </div>

                </div>


                <p class="mt-5 mb-3 text-muted text-center">&copy;KineCine 2017-2020</p>
            </form>

            <script>
// Get the modal
                var modal = document.getElementById("myModal");

// Get the button that opens the modal
                var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
                btn.onclick = function () {
                    modal.style.display = "block";
                }

// When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                }

// When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>



        </div>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
