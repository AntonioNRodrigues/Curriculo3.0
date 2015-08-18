<%-- 
    Document   : Calculadora
    Created on : Jul 7, 2014, 12:39:40 PM
    Author     : Antonio Rodrigues
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>

        <h1>Analista</h1>
        <a id="counterArticleA" href="#"><div id="counterArticle">
                <c:out value="${loopCounter5}" /> 
            </div></a>
        <p>Analista trata-se de um projecto onde se pretende contar o numero de palavras de um dado texto. Para consultar toda a informação click em 
            <a href="#" onclick="window.open('Articles/LabP/Analista/Analista.pdf', '_blank', 'fullscreen=no');
                    return false;">Analista.pdf </a><i>(Todos os direitos reservados aos autores dos enunciados).</i></p>

        <c:forEach var ="nome" items="${read.listaNomesFicheirosDeCadaPasta.get(4)}">
            <button  class='buttonJavaSite' type="submit" value="OK"  
                     onclick="var id3 = document.getElementById(id);
                             showTextArea(id3, 'javaOutraPasta');" id=${nome}>
                ${nome}ava
            </button>
        </c:forEach>  
         <br><a id="aGitHub" href="https://github.com/AntonioNRodrigues/Curriculo/tree/master/Articles/LabP/Analista" target="_blank" 
                           title="visualize o codigo na GitHub">Source Code</a>
        <%@include file="../../MenuInsertComments.jsp" %>
    </body>
</html>
