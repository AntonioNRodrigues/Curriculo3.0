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

        <h1>Calculadora</h1>
        <a id="counterArticleA" href="#"><div id="counterArticle">
                <c:out value="${loopCounter2}" /> 
            </div></a>
        <p>Calculadora que avalia expressões, com inteiros, escritas na notação sufixa. Para consultar toda a informação click em 
            <a href="#" onclick="window.open('Articles/LabP/Calculadora/calculadora.pdf', '_blank', 'fullscreen=no');
                    return false;">Calculadora.pdf </a><i>(Todos os direitos reservados aos autores dos enunciados).</i></p>

        <c:forEach var ="nome" items="${read.listaNomesFicheirosDeCadaPasta.get(2)}">
            <button  class='buttonJavaSite' type="submit" value="OK"  
                     onclick="var id3 = document.getElementById(id);
                             showTextArea(id3, 'javaOutraPasta');" id=${nome}>
                ${nome}ava
            </button>
        </c:forEach>  
         <br><a id="aGitHub" href="https://github.com/AntonioNRodrigues/Curriculo/tree/master/Articles/LabP/Calculadora" target="_blank" 
                           title="visualize o codigo na GitHub">Source Code</a>
        <%@include file="../../MenuInsertComments.jsp" %>
    </body>
</html>
