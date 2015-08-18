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
        <link rel="stylesheet" href="CSS/antonionrodrigues.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
        <meta name="google-site-verification" content="K-ymv6-X1npnBub3M05ZAw9pIAMrToUYhnnamS82DmQ" />
        <title>António Rodrigues</title>
    </head>

    <body id="frontPage">

        <img id="imagemBackground" src="Imagens/FrontPage.jpg" alt="WorkSpace" usemap="#imageMap">
        <img id="imagemAboutMe" hidden="#" alt="Imagem da pagina AboutMe" src="Imagens/aboutMe.jpg"> 
        <img id="imagemPCurriculum" hiden="#" alt="Imagem da pagina PageCurriculum" src="Imagens/PageCurriculo.jpg" >
        <img id="imagemJavaWork" hiden="#" alt="Imagem da pagina javaWork" src="Imagens/javaWork.jpg" >

        <div id="linksEntrada" >
            <a href="AboutMe.jsp" onmouseover="popIn2('imagemAboutMe');" onmouseout="normal2('imagemAboutMe');">About Me</a>
            <a href="ControladorPersonalPage" onmouseover="popIn2('imagemPCurriculum');" onmouseout="normal2('imagemPCurriculum');">Curriculum</a>
            <a href="Projects.jsp" onmouseover="popIn2('imagemJavaWork');" onmouseout="normal2('imagemJavaWork');">Projects</a>
        </div>

        <footer id="footerFrontPage">
            <p><a href="AboutMe.jsp" target="_blank"> <span style="font-size: 20px">&copy;</span> António Rodrigues 2013-2015</a></p>
        </footer>
    </body>

</html>
