<%-- 
    Document   : PageCurriculum
    Created on : 20/Jun/2014, 18:13:01
    Author     : Antonio Rodrigues
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="António Rodrigues" />
        <meta name="description" content="Personal Site" />
        <link rel="stylesheet" href="CSS/antonionrodrigues2014.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


        <title>${fullName}</title>
    </head>

    <body id="bodyPageCurriculum">

        <%@include file="header.jsp"%>

        <div class="container-fluid">
            <div id="content" class="row"> 
                <div id="barraNavegacao" class="col-md-2">
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
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateStart&order=ASC">Sorted by ASC date Started</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateStart&order=DESC">Sorted by DESC date Started</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateLeft&order=ASC">Sorted by ASC date Left</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateLeft&order=DESC">Sorted by DESC date Left</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateInterval&order=ASC">Sorted by ASC Interval date</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpTeaching&sort=dateInterval&order=DESC">Sorted by DESC INterval date</a></li>
                            </ul>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desporto<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateStart&order=ASC">Sorted by ASC date Started</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateStart&order=DESC">Sorted by DESC date Started</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateLeft&order=ASC">Sorted by ASC date Left</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateLeft&order=DESC">Sorted by DESC date Left</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateInterval&order=ASC">Sorted by ASC Interval date</a></li>
                                <li><a href="ControladorPersonalPage?list=ExpSport&sort=dateInterval&order=DESC">Sorted by DESC INterval date</a></li>
                            </ul>
                        </li>

                        <li id="tituloBarraNav3"><b>Portefolio/Badges</b></li>
                        <li><a href="http://www.codecademy.com/pt/users/antoniorodrigues" 
                               title="Codecade profile" target="_blank">Codecademy</a>
                        </li>
                        <li><a href="http://www.khanacademy.org/profile/AntonioRodrigues/" 
                               title="KhanAcademy profile" target="_blank">KhanAcademy</a>
                        </li>
                        <li><a href="http://teamtreehouse.com/antoniorodrigues" target="_blank" 
                               title="Treehouse profile">TreeHouse</a>
                        </li>

                    </ul>
                    
                </div>     


                <div id="content2" class = "col-md-10">
                    <ul id="FormCursosProg">
                        <c:forEach var="eduFormProg" items="${eduFormProg}"> 
                            <li><b>Datas: </b>${eduFormProg.dateStart} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduFormProg.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduFormProg.principalSubjects} <br>
                                <b>Entidade: </b>${eduFormProg.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="FormSup">
                        <c:forEach var="eduSup" items="${eduSup}"> 
                            <li>
                                <b>Datas: </b>${eduSup.dateStart} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduSup.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduSup.principalSubjects} <br>
                                <b>Entidade: </b>${eduSup.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="FormCursosDesp">
                        <c:forEach var="eduFormDesp" items="${eduFormDesp}"> 
                            <li><b>Datas: </b>${eduFormDesp.dateStart} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduFormDesp.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduFormDesp.principalSubjects} <br>
                                <b>Entidade: </b>${eduFormDesp.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="ExpDocente">
                        <c:forEach var="expEdFisica" items="${expEdFisica}"> 
                            <li>
                                <b>Datas: </b>${expEdFisica.dateStart} - ${expEdFisica.dateLeft} <br> 
                                <b>Função ou cargo ocupado: </b>${expEdFisica.job} <br>
                                <b>Principais actividades e responsabilidades: </b>${expEdFisica.jobActivite} <br>
                                <b>Local: </b>${expEdFisica.place} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="ExpOutros">
                        <c:forEach var="expMonitor" items="${expMonitor}"> 
                            <li>
                                <b>Datas: </b>${expMonitor.dateStart} - ${expMonitor.dateLeft}<br> 
                                <b>Função ou cargo ocupado: </b>${expMonitor.job} <br>
                                <b>Principais actividades e responsabilidades: </b>${expMonitor.jobActivite} <br>
                                <b>Local: </b>${expMonitor.place} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>

        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
        <script src="JS/menuSort.js" type="text/javascript"></script>
    </body>
</html>
