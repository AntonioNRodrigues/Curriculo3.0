<%-- 
    Document   : DefaultErrorPage
    Created on : 13/Fev/2014, 18:06:20
    Author     : Antonio Rodrigues
    Version    : 2.0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pf" scope="page" class="model.classe.PersonalInformation"/>
<jsp:setProperty name="pf" property="firstName" value="António"/>
<jsp:setProperty name="pf" property="lastName" value="Rodrigues"/>
<jsp:setProperty name="pf" property="nationality" value="Português" />
<jsp:setProperty name="pf" property="email" value="antonio.n.rodrigues@gmail.com"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/normalize.css" type="text/css" media="screen"/>
        <link rel="stylesheet" href="CSS/antonionrodrigues2014.css" type="text/css" media="screen"/>
        <link rel="shortcut icon" type="image/x-icon" href="Imagens/simbol.ico">
        <title>António Rodrigues</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <p>dam..... something went Wrong!!!! Sorry about this..</p>
        <%@include file="footer.jsp" %>



        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="JS/antonionrodrigues.js" type="text/javascript"></script>
    </body>
</html>
