<%-- 
    Document   : peferencias_form2
    Created on : 06/10/2017, 06:56:22
    Author     : Silvia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/tarjeta.css">
        <link rel="stylesheet" href="css/estilos2.css">    

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400,600" rel="stylesheet"> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <style>
            @font-face {
                font-family: 'alex';
                src: url('fonts/alexbrush-regular.woff2') format('woff2'),
                    url('fonts/alexbrush-regular.woff') format('woff');
                font-weight: normal;
                font-style: normal;

            }
            body{width:1100px; height: 1750px; margin:20px auto; background:aqua;    }


            article  .parr-jsp{ margin: 5px 5px;}

            article .parr2-jsp{
                width: 70%;
                margin-bottom: 50px;
            }


        </style>

        <script>
            function dia_de_hoy() {
                var hoy = new Date();
                document.write(hoy.toDateString());
            }

            var nombre = prompt("Introduce tu nombre");
            var apellido = prompt("Apellido");
        </script>
    </head>
    <body>

        <nav>
            <ul class="fondo">
                <li> <a href="#">English Music</a></li>
                <li> <a href="#">English films</a></li>
                <li> <a href="#">Synonyms</a></li>
                <li> <a href="#"> Tips</a></li>
                <li> <a href="#">Contactanos</a></li>
            </ul>
        </nav>

        <header>
            <section id="banner"> 
                <h1 title="&#9733;" class="my-3"><a href="plantillaESTR3_1.html">Fluent English by Luisano</a></h1>
                <h2>Because this day would come and union makes strength. Join us!</h2>
                <h3>All the best and most useful English information joined and combined in one site along with amazing sections related to music, videos and books which help you progress remarkably.</h3>
            </section>

            <section id="login"><img src="img/engvid.jpg" alt=""  ></section>
            <section id="form"><img src="img/talk.png" alt=""  ></section>
        </header>

        <main>
            <aside id="left">
                <h2>The highlights</h2>

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/lucy.jpg" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Vocabulary</h3>
                            <h3>British Expressions</h3>
                            <h3>Grammar</h3>
                            <h3>British Pronunciation</h3>
                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/anna.png" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Business English</h3>
                            <h3>English with Song</h3>
                            <h3>Accent Discovery</h3>
                            <h3>British Pronunciation</h3>
                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/nene1.png" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Speak Fluent</h3>
                            <h3>English Slang Alphabet</h3>
                            <h3>Advanced English Listening Practice </h3>

                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/skype.jpg" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Linking words</h3>
                            <h3>Clauses</h3>
                            <h3>Phasal verbs</h3>
                            <h3>Reporting verbs</h3>
                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/marina.jpg" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>TOEFL preparation tips</h3>
                            <h3>British vs American</h3>
                            <h3>To learn English fast</h3>
                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/mmm2.jpg" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Cooking and eating in English</h3>
                            <h3>English Idioms</h3>
                            <h3>Pronunciation</h3>
                        </div>
                    </div>
                </div> 

                <div class="contenedor">
                    <div class="carta">
                        <div class="lado frente">
                            <img src="img/vanesa.jpg" alt="">
                        </div>
                        <div class="lado atras">
                            <h3>Phrasal verbs</h3>
                            <h3>Natural English Expressions</h3>
                            <h3>Tips For speaking natural English</h3>
                        </div>
                    </div>
                </div> 
            </aside>

            <article>

                <%
                    //valor x defecto

                    String studying = "Allmost al life";

                    String interest = "Phrasal Verbs";
                    String hobbie = "Fishing";
                    //Lee la cookie de la peticion del navegador, cookie corte array q almacena toda la inf del usuario

                    Cookie[] lasCookies = request.getCookies();

                    Cookie[] lasCookies2 = request.getCookies();
                    Cookie[] lasCookies3 = request.getCookies();

                    //Buuscar las preferencias. la ciudad favorita
                    if (lasCookies != null) { //verificar si hay cookie creada
                        for (Cookie cookie_temporal : lasCookies) {
                            if ("form2.choose_studying".equals(cookie_temporal.getName())) {
                                studying = cookie_temporal.getValue();
                                break;
                            }
                        }
                    }

                    if (lasCookies2 != null) {
                        for (Cookie cookie_temporal2 : lasCookies2) {
                            if ("form2.choose_interest".equals(cookie_temporal2.getName())) {
                                interest = cookie_temporal2.getValue();
                                break;
                            }

                        }
                    }

                    if (lasCookies3 != null) {
                        for (Cookie cookie_temporal3 : lasCookies3) {
                            if ("form2.choose_hobbie".equals(cookie_temporal3.getName())) {
                                hobbie = cookie_temporal3.getValue();
                                break;
                            }
                        }
                    }


                %>
                <div class="parr-jsp">

                    <div class="parr2-jsp">
                        <h2>Articulos de interes tras estudiar <%= studying%></h2>

                        Hoy es dia: <script> dia_de_hoy();
                        </script> <br>

                        <script>
                            document.write("<p>");
                            document.write("Bienvenido: " + nombre + " " + apellido);
                            document.write("</p>");
                        </script><br>


                    </div>


                    <div class="parr2-jsp">     
                        <h2> Articulos utiles sobre  <%= interest%></h2>

                        <jsp:include page="parapref.jsp"></jsp:include>     
                        </div>

                        <div class="parr2-jsp">     
                            <h2> Articulos utiles sobre  <%= hobbie%></h2>
                        <p>Esto es un texto d ejemplo</p>
                    </div>
                </div>
            </article>

            <aside id="right">
                <h3><a href="Sections/talkingabout.html">Talking about</a> </h3>  
                <h3>Good health helps</h3> 
                <h3>Verbs as per topic</h3>
                <h3>Tips for studying</h3>
                <div class="cont-link">
                    <img src="img/italki.jpg" alt="" class="links">
                </div>
                <div class="cont-link">
                    <img src="img/babbel.jpg" alt="" class="links">
                </div>
            </aside>
        </main>


        <footer> <h2>Todos los derechos reservados </h2></footer>


        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
    </body>
</html>
