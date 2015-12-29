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
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/antonionrodrigues2014.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

        <title>${fullName}</title>
    </head>

    <body id="bodyPageCurriculum">

        <%@include file="header.jsp"%>

        <div class="container-fluid">
            <div id="content" class="row"> 
                <div id="barraNavegacao">
                    <ul id="tabelas" class ="col-md-2">
                        <li id="tituloBarraNav1"><b>Educação</b></li>
                        <li><a href="#" title="view the content of University" onclick="popInPC('FormSup');">Universidade</a></li>
                        <li id="dif">Cursos/Formação</li>
                        <li><a href="#" title="view Coding" onclick="popInPC('FormCursosProg');">Programação</a></li>
                        <li><a href="#" title="view Sports" onclick="popInPC('FormCursosDesp');">Desporto</a></li>


                        <li id="tituloBarraNav2"><b>Experiência</b></li>
                        <li><a href="#" title="view teaching experience" onclick="popInPC('ExpDocente');">Docência</a></li>
                        <li><a href="#" title="view sports experience"  onclick="popInPC('ExpOutros');">Desporto</a></li>
                        <li><a href="#" title="view swiming experience" onclick="popInPC('ExpNatacao');">Natação</a></li>

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
                            <li><b>Datas: </b>${eduFormProg.date} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduFormProg.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduFormProg.principalSubjects} <br>
                                <b>Entidade: </b>${eduFormProg.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="FormSup">
                        <c:forEach var="eduSup" items="${eduSup}"> 
                            <li>
                                <b>Datas: </b>${eduSup.date} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduSup.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduSup.principalSubjects} <br>
                                <b>Entidade: </b>${eduSup.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="FormCursosDesp">
                        <c:forEach var="eduFormDesp" items="${eduFormDesp}"> 
                            <li><b>Datas: </b>${eduFormDesp.date} <br> 
                                <b>Designação da qualificação atribuída: </b>${eduFormDesp.title} <br>
                                <b>Principais disciplinas/competências profissionais: </b>${eduFormDesp.principalSubjects} <br>
                                <b>Entidade: </b>${eduFormDesp.nameOrganisation} <br>
                            </li>
                        </c:forEach>    
                    </ul>

                    <ul id="ExpDocente">
                        <c:forEach var="expEdFisica" items="${expEdFisica}"> 
                            <li>
                                <b>Datas: </b>${expEdFisica.date} <br> 
                                <b>Função ou cargo ocupado: </b>${expEdFisica.job} <br>
                                <b>Principais actividades e responsabilidades: </b>${expEdFisica.jobActivite} <br>
                                <b>Local: </b>${expEdFisica.place} <br>
                            </li>
                        </c:forEach>    
                    </ul>
                    <ul id="ExpNatacao">
                        <c:forEach var="expNatacao" items="${expNatacao}"> 
                            <li>
                                <b>Datas: </b>${expNatacao.date} <br> 
                                <b>Função ou cargo ocupado: </b>${expNatacao.job} <br>
                                <b>Principais actividades e responsabilidades: </b>${expNatacao.jobActivite} <br>
                                <b>Local: </b>${expNatacao.place} <br>
                            </li>
                        </c:forEach>    
                    </ul>
                    <ul id="ExpOutros">
                        <c:forEach var="expMonitor" items="${expMonitor}"> 
                            <li>
                                <b>Datas: </b>${expMonitor.date} <br> 
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
    </body>
</html>
