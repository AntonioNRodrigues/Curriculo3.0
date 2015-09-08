<%-- 
    Document   : FrontPage
    Created on : 24/Ago/2012, 15:13:39
    Author     : Antonio Rodrigues
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/normalize.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="CSS/antonionrodrigues2014.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <meta name="google-site-verification" content="K-ymv6-X1npnBub3M05ZAw9pIAMrToUYhnnamS82DmQ" />
        <title>António Rodrigues</title>
    </head>

    <body id="frontPage">

        <div class="container">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="Imagens/FrontPage.jpg" alt="Imagem incial da página">
                        <div class="carousel-caption">
                            <h3>antonionrodrigues.com</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Imagens/PageCurriculo.jpg" alt="Preview da página Curriculum">
                        <div class="carousel-caption">
                            <h3><a href="ControladorPersonalPage">Curriculum</a></h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Imagens/aboutMe.jpg" alt="Preview da pagina About Me">
                        <div class="carousel-caption">
                            <h3><a href="AboutMe.jsp">About Me</a></h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Imagens/javaWork.jpg" alt="Preview da página Projects">
                        <div class="carousel-caption">
                            <h3><a href="Projects.jsp">Projects</a></h3>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>



        <footer id="footerFrontPage">
            <p><a href="AboutMe.jsp" target="_blank"> <span style="font-size: 20px">&copy;</span> António Rodrigues 2013-</a></p>
        </footer>

        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>


</html>
