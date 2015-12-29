<%-- 
    Document   : AboutMe
    Created on : 31/Ago/2012, 15:39:38
    Author     : Antonio Rodrigues
--%>

<!DOCTYPE html>
<%@page import="model.suport.ReadTextDefinePath"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pf" scope="page" class="model.classe.PersonalInformation"/>
<jsp:setProperty name="pf" property="firstName" value="António"/>
<jsp:setProperty name="pf" property="lastName" value="Rodrigues"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/normalize.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/antonionrodrigues.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <title><%= pf.getFirstName()%><%=pf.getLastName()%></title>
    </head>

    <body id="aboutMe"> 

        <img id="imagemBackgroundAboutMe"  src="Imagens/PaginaInicial.jpg">

        <div id="blocoCentral" class="container-fluid">  
            <div class="row">
                <div class="col-md-12">
                    <p id="texto">
                        Chamo-me António Rodrigues, tenho 33 anos e vivo em Lisboa. 
                        Licenciei-me em Ciências do Desporto 
                        e Educação Física pela F.C.D.E.F da Universidade de Coimbra. 
                        Tenho trabalhado, essencialmente, como professor de Educação Física, de 
                        natação e monitor na área do desporto aventura.

                        A partir de 2010, comecei a interessar-me pela programação, tendo 
                        conseguido obter a <b>certificação em JavaSE 6 </b>e em <b>JavaEE 6 
                            Web Component Developer</b>.

                        No ano de 2013 decidi frequentar o curso de <b>Engenharia Informática na Faculdade de 
                            Ciências da Universidade de Lisboa</b> com o intuito de aumentar o meu conhecimento.
                        Esta Web Application constitui uma forma de exercitar 
                        aquilo que tenho aprendido e explorar outras linguagens de programação, como javascript e jquery,
                        com o intuito de aumentar as minhas competências.
                    </p>
                </div>
                <dl class="col-md-12">    
                    <dt>
                    <a href="http://www.linkedin.com/pub/ant%C3%B3nio-rodrigues/31/552/163" target="_blank" title="Linkedin Profile">
                        <img src="Imagens/linkedin-logo-square2.png" alt="Linkedin Icon"></a> 
                    <a href="http://www.facebook.com/antonio.rodrigues.3150" target="_blank" title="FaceBook Profile">
                        <img src="Imagens/facebook-logo-square.png" alt="facebook Icon"></a>
                    <a href="https://twitter.com/#!/Antonio_N_R" target="_blank" title="Twitter Profile">
                        <img src="Imagens/twitter-logo-square.png" alt="Twitter Icon"></a>
                    <a href="mailto:antonio.n.rodrigues@gmail.com?Subject=[FromWebPage]" title="Envie-me um email" >
                        <img src="Imagens/mail-square.png" alt="eMail Icon"></a>
                    <a href="https://plus.google.com/u/0/+AntónioRodrigues0x51?rel=author" target="_blank" title="Google+ Profile">
                        <img src="Imagens/google-logo-square.png" alt="Google plus icon"></a>
                    <a href="https://github.com/AntonioNRodrigues" target="_blank" title="GitHub Profile">
                        <img src="Imagens/github-logo-square.png" alt="GitHub Icon"></a><p>
                        </dt>
                </dl>
            </div>
        </div>



        <div  id="CapaDivAboutMe" onmouseover="crescer('CapaDivAboutMe', 'CapaAboutMe');" 
              onmouseout="decrescer('CapaDivAboutMe', 'CapaAboutMe');">
            <a id="CapaAboutMe" href="FrontPage.jsp" ><em>FrontPage</em></a></div>
        <div  id="JavaDivAboutMe" onmouseover="crescer('JavaDivAboutMe', 'JavaAboutMe');" 
              onmouseout="decrescer('JavaDivAboutMe', 'JavaAboutMe');">
            <a id="JavaAboutMe" href="Projects.jsp" ><em>Projects</em></a></div>
        <div  id="CvDivAboutMe" onmouseover="crescer('CvDivAboutMe', 'CvAboutMe');" 
              onmouseout="decrescer('CvDivAboutMe', 'CvAboutMe');">
            <a id="CvAboutMe" href="ControladorPersonalPage"><em>Cv</em></a></div>
            <%--
            <div id="bloco2">
                
                <ul> 
                    <li><a id="primeiro" href="#" onmouseover="popIn('primeiro', 'milNove');" onmouseout="normal('primeiro', 'milNove');"><p>1999</p></a> </li>
                    <li><a id="segundo" href="#" onmouseover="popIn('segundo', 'doisCinco');" onmouseout="normal('segundo', 'doisCinco');"><p>2005</p></a> </li>
                    <li><a id="terceiro" href="#" onmouseover="popIn('terceiro', 'doisSeis');" onmouseout="normal('terceiro', 'doisSeis');"><p>2006</p></a> </li>        
                    <li><a id="quarto" href="#" onmouseover="popIn('quarto', 'doisSete');" onmouseout="normal('quarto', 'doisSete');"><p>2007</p></a> </li>
                    <li><a id="quinto" href="#" onmouseover="popIn('quinto', 'doisOito');" onmouseout="normal('quinto', 'doisOito');"><p>2008</p></a> </li>
                    <li><a id="sexto" href="#" onmouseover="popIn('sexto', 'doisNove');" onmouseout="normal('sexto', 'doisNove');"><p>2009</p></a> </li>
                    <li><a id="setimo" href="#" onmouseover="popIn('setimo', 'doisDez');" onmouseout="normal('setimo', 'doisDez');"><p>2010</p></a> </li>
                    <li><a id="oitavo" href="#" onmouseover="popIn('oitavo', 'doisOnze');" onmouseout="normal('oitavo', 'doisOnze');"><p>2011</p></a> </li>
                    <li><a id="nono" href="#" onmouseover="popIn('nono', 'doisDoze');" onmouseout="normal('nono', 'doisDoze');"><p>2012</p></a> </li>
                    
                </ul>
               
                </div>
      
                <div id="milNove">
                    <p>Terminei o Ensino Secundário.</p><br>
                    <p>Ingressei na faculdade para ir estudar Ciências do Desporto e Educação Física na F.C.D.E.F - Universidade de Coimbra</p>
                    
                </div>
                
                <div id="doisCinco">
                    <p>Ano de finalização da minha licenciatura</p><br>
                    <p>Primeiro trabalho </p>
                </div>
      
                <div id="doisSeis">
                    <p>.....3</p>
                </div>
      
                <div id="doisSete">
                    <p>.....4</p>
                </div>
      
                <div id="doisOito">
                    <p>.....5</p>
                </div>
            
                <div id="doisNove">
                    <p>.....6</p>
                </div>
                
                <div id="doisDez">
                    <p>.....7</p>
                </div>
      
                <div id="doisOnze">
                    <p>.....8</p>
                </div>
      
                <div id="doisDoze">
                    <p>.....9</p>
                </div>
            --%>

        <footer>
            <p><a href="AboutMe.jsp"> <span style="font-size: 20px">&copy;</span> António Rodrigues 2013-2014</a></p>
        </footer>     
    </body>


</html>
