<%-- 
    Document   : MenuSort
    Created on : Aug 21, 2015, 11:42:44 AM
    Author     : antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked">
                <li id="tituloBarraNav1"><b>Educação</b></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Universidade<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ControladorPersonalPage?list=EducUniversity&sort=date&order=ASC">Sorted by ASC date </a></li>
                        <li><a href="ControladorPersonalPage?list=EducUniversity&sort=date&order=DESC">Sorted by DESC date</a></li>
                    </ul>
                </li>
                <li id="dif">Cursos/Formação</li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Programação<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ControladorPersonalPage?list=FormCode&sort=date&order=ASC">Sorted by ASC date </a></li>
                        <li><a href="ControladorPersonalPage?list=FormCode&sort=date&order=DESC">Sorted by DESC date</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desporto<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ControladorPersonalPage?list=FormSport&sort=date&order=ASC">Sorted by ASC date </a></li>
                        <li><a href="ControladorPersonalPage?list=FormSport&sort=date&order=DESC">Sorted by DESC date</a></li>
                    </ul>
                </li>
                <li id="tituloBarraNav2"><b>Experiência</b></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Docencia<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ControladorPersonalPage?list=expDoecencia&sort=dateStart&order=ASC">Sorted by ASC date Started</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateStart&order=DESC">Sorted by DESC date Started</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateLeft&order=ASC">Sorted by ASC date Left</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateLeft&order=DESC">Sorted by DESC date Left</a></li>
                    </ul>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desporto<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ControladorPersonalPage?list=expDoecencia&sort=dateStart&order=ASC">Sorted by ASC date Started</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateStart&order=DESC">Sorted by DESC date Started</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateLeft&order=ASC">Sorted by ASC date Left</a></li>
                        <li><a href="ControladorPersonalPage?list=expDocencia&sort=dateLeft&order=DESC">Sorted by DESC date Left</a></li>
                    </ul>
                </li>


            </ul>
        </div>
    </body>
</html>
