<%-- 
    Document: Projects
    Version: 3.0
    Created on : 25/Junho/2014, 16:13
    Author : Antonio Rodrigues
--%>


<!DOCTYPE html>
<%@page import="model.connections.MyConnection" %>
<%@page import="model.suport.ReadTextDefinePath"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="MyCon" scope="page" class="model.connections.MyConnection"/>
<jsp:useBean id="read" scope="page" class="model.suport.ReadingSimpleWay"/>
<jsp:useBean id="pf" scope="page" class="model.classe.PersonalInformation"/>
<jsp:setProperty name="pf" property="firstName" value="António"/>
<jsp:setProperty name="pf" property="lastName" value="Rodrigues"/>
<jsp:setProperty name="pf" property="nationality" value="Português" />
<jsp:setProperty name="pf" property="email" value="antonio.n.rodrigues@gmail.com"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/normalize.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <%-- <link rel="stylesheet" href="CSS/antonionrodrigues.css" type="text/css" media="screen"/>--%>
        <link rel="stylesheet" href="CSS/antonionrodrigues2014.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="CSS/SintaxHighlighter/shCore.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="CSS/SintaxHighlighter/shCoreEmacs.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <script src="JS/SintaxHighlighter/shCore.js" type="text/javascript"></script>
        <script src="JS/SintaxHighlighter/shBrushCss.js" type="text/javascript"></script>
        <script src="JS/SintaxHighlighter/shBrushJScript.js" type="text/javascript"></script>
        <script src="JS/SintaxHighlighter/shBrushJava.js" type="text/javascript"></script>
        <script src="JS/SintaxHighlighter/shBrushSql.js" type="text/javascript"></script>

        <%--<script src="JS/antonionrodriguesJQUERY.js" type="text/javascript"></script>--%>
        <title>António Rodrigues</title>
    </head>

    <body id="workJava">

        <%!@Override
            /**
             * Override do metodo init() do Jsp inicialização do construtor com
             * dois parametros para atribuir automaticamnete os path das pastas
             * Text e ClassesSite. Classes essas que são essencias para que esta
             * Jsp possa ler atráves da Classe ReadingSimpleWay o conteudo
             * dessas duas pastas.
             */
            public void init() {
                try {
                    super.init();
                    new ReadTextDefinePath(this.getServletContext().getRealPath("/ClassesSiteJava"),
                            this.getServletContext().getRealPath("/ClassesSiteJSP"),
                            this.getServletContext().getRealPath("/Articles/LabP/Calculadora"),
                            this.getServletContext().getRealPath("/Articles/LabP/Impressora"),
                            this.getServletContext().getRealPath("/Articles/LabP/Analista"));

                } catch (ServletException se) {
                    System.err.println(se);
                }

            }
                                %> 

        <sql:setDataSource var="dataBase" driver="${MyCon.driver}"
                           url="${MyCon.linkServer}" user="${MyCon.userServer}" 
                           password="${MyCon.passServer}" />

        <sql:query var="result" dataSource="${dataBase}" >
            select Name, Comment, ArticleNumber, Date from commentsArticles Order by Date DESC; 
        </sql:query>

        <%@include file="Articles/MenuGetCommentsPerArticle.jsp" %>

        <%@include file="header.jsp" %>
        <div id="mainContent" class="container-fluid">
            <div class="row">
                <article class="col-md-4" accesskey="1">
                    <a id="counterArticleA" href="#"><div id="counterArticle">
                            <c:out value="${loopCounter1}" /> </div></a>
                    <h1>WebPage</h1>
                    <img id="imagemSite" src="Imagens/FrontPage.jpg" class="img-responsive" alt="responsive imagem">

                    <h3>Java Classes</h3>
                    <p>

                        As Classes de java serviram para criar o curriculo:<br> 
                        Education, EducationOverall, Experience, OrgEducationOver, 
                        OrgWorkExperience, PersonalInformation e WorkExperience.
                        <br>
                        As três classes ReadingSimpleWay, ReadTextDefinePath e 
                        ReadTextBeanFormat são classes auxiliares que permitem 
                        ler o conteudo das pastas. Estas classes permitem criar 
                        nesta JSP o ambiente de colocar o nome das classes nos 
                        respectivos botões. É desta forma que conteúdo de cada 
                        classe é 'transferida' para as áreas de texto.    

                        Ficam a faltar aqui dois ficheiros essenciais o antonionrodrigues.css 
                        e antonionrodrigues.js, no entanto, decidi nao incluí-los porque 
                        é fácil, ter acesso a eles.
                        De referir que o trabalho de agarrar o evento 'onclick' 
                        de cada botão, abrir uma nova página com a textarea é 
                        feito através de código javascript.


                    </p>    
                    <c:forEach var ="nome" items="${read.listaNomesFicheirosDeCadaPasta.get(0)}">
                        <button  class='buttonJavaSite' type="submit" value="OK"  
                                 onclick="var id3 = document.getElementById(id);
                                         showTextArea(id3, 'javaOutraPasta');" id=${nome}>
                            ${nome}ava
                        </button>
                    </c:forEach>   
                    <h3>Java Server Pages</h3>
                    <p>Estes são os ficheiros de jsp antes da compilação, 
                        para terem acesso a toda a informação e trabalho realizado.
                    </p>
                    <c:forEach var ="nome" items="${read.listaNomesFicheirosDeCadaPasta.get(1)}">
                        <button  class="buttonJSPSite" type="submit" value="OK"  
                                 onclick="var id3 = document.getElementById(id);
                                         showTextArea(id3, 'jspage');" id=${nome} >
                            ${nome}
                        </button>
                    </c:forEach> 

                    <br><a id="aGitHub" href="https://github.com/AntonioNRodrigues/Curriculo" target="_blank" 
                           title="visualize o codigo na GitHub">Source Code</a>
                    <div class="fadeInFadeOut"> </div>
                    <%@include file="Articles/MenuInsertComments.jsp" %>
                </article>
                <article class="col-md-4" accesskey="2"><%@include file="Articles/LabP/Calculadora/Calculadora.jsp" %></article>

                <article class="col-md-4" accesskey="3"><%@include file="Articles/LabP/Impressora/Impressora.jsp" %></article>

                <article class="col-md-4" accesskey="5"><%@include file="Articles/LabP/Analista/Analista.jsp" %></article>

                <article id="especialNumber4" class="col-md-4" accesskey="4"><%@include file="Articles/Exemplos/SimpleInsertUserDB.jsp" %></article>

            </div>

        </div>

        <div class="classesJava" style="display:none">
            <c:forEach var ="textoJava" items="${read.listaConteudoFicheiroDeCadaPasta.get(0)}">
                <textarea class ="java" rows="30" cols="94" readonly="readonly">${textoJava}</textarea><br>
            </c:forEach>
        </div> 
        <div class="classesJSP" style="display:none">

            <c:forEach var ="textoJSP" items="${read.listaConteudoFicheiroDeCadaPasta.get(1)}">
                <textarea class ="jsp" rows="30" cols="94" readonly="readonly">${textoJSP}</textarea><br>
            </c:forEach>
        </div>    


        <div class="classesJava" style="display:none">
            <c:forEach var ="textoJava" items="${read.listaConteudoFicheiroDeCadaPasta.get(2)}">
                <textarea class ="java" rows="30" cols="94" readonly="readonly">${textoJava}</textarea><br>
            </c:forEach>
        </div> 

        <div class="classesJava" style="display:none">
            <c:forEach var ="textoJava" items="${read.listaConteudoFicheiroDeCadaPasta.get(3)}">
                <textarea class ="java" rows="30" cols="94" readonly="readonly">${textoJava}</textarea><br>
            </c:forEach>
        </div>
        <div class="classesJava" style="display:none">
            <c:forEach var ="textoJava" items="${read.listaConteudoFicheiroDeCadaPasta.get(4)}">
                <textarea class ="java" rows="30" cols="94" readonly="readonly">${textoJava}</textarea><br>
            </c:forEach>
        </div>  

        <%@include file="footer.jsp" %>

    </body>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
</html>
