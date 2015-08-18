<%-- 
    Document   : MenuGetCommentsPerArticle
    Created on : Sep 10, 2014, 11:26:26 AM
    Author     : Antonio Rodrigues
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div id="getComments" style="display: none">
            <c:set var="loopCounter1" value= "0" scope="application"/> 
            <c:set var="loopCounter2" value= "0" scope="application"/> 
            <c:set var="loopCounter3" value= "0" scope="application"/> 
            <c:set var="loopCounter4" value= "0" scope="application"/> 
            <c:set var="loopCounter5" value= "0" scope="application"/> 
            <c:forEach var="linha" items="${pageScope.result.rows}" varStatus="loopCounter">
                <c:if test="${linha.ArticleNumber == '1'}">
                    <div id="${linha.ArticleNumber}" style="display: none"> 
                        <h5>${linha.Name}</h5>
                        <time>${linha.Date}</time>
                        <p>${linha.Comment}</p>
                        <c:set var="loopCounter1" value="${loopCounter1+1}" scope="application"/>
                    </div>
                </c:if>
                <c:if test="${linha.ArticleNumber == '2'}">
                    <div id="${linha.ArticleNumber}" style="display: none"> 
                        <h5>${linha.Name}</h5>
                        <time>${linha.Date}</time>
                        <p>${linha.Comment}</p>
                        <c:set var="loopCounter2" value="${loopCounter2+1}" scope="application"/> 
                    </div>
                </c:if>
                <c:if test="${linha.ArticleNumber == '3'}">
                    <div id="${linha.ArticleNumber}" style="display: none"> 
                        <h5>${linha.Name}</h5>
                        <time>${linha.Date}</time>
                        <p>${linha.Comment}</p>
                        <c:set var="loopCounter3" value="${loopCounter3+1}" scope="application"/>
                    </div>
                </c:if>
                <c:if test="${linha.ArticleNumber == '4'}">
                    <div id="${linha.ArticleNumber}" style="display: none"> 
                        <h5>${linha.Name}</h5>
                        <time>${linha.Date}</time>
                        <p>${linha.Comment}</p>
                        <c:set var="loopCounter4" value="${loopCounter4+1}" scope="application"/>
                    </div>
                </c:if>
                <c:if test="${linha.ArticleNumber == '5'}">
                    <div id="${linha.ArticleNumber}" style="display: none"> 
                        <h5>${linha.Name}</h5>
                        <time>${linha.Date}</time>
                        <p>${linha.Comment}</p>
                        <c:set var="loopCounter4" value="${loopCounter5+1}" scope="application"/>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </body>
</html>
