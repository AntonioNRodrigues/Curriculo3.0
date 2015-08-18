<%-- 
    Document   : MenuInsertComments
    Created on : Sep 7, 2014, 9:08:23 AM
    Author     : Antonio Rodrigues
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div id="insertComments" style="display: none">
            <form id="comment" method="post" >
                <input id="nameCommentator" type="text" name="nameCommentator" maxlength="50" size="110" placeholder="nome"><br>
                <textarea  id="commentCommentator" name="nameCommentator" placeholder="comentário:" rows="4"></textarea>
                <button id="buttonComment"  onclick="insertComment($(this).parent(),this.form);">Submit</button>
            </form>
            <button id="buttonClose" onclick="clearSubmitMenu($(this).parent());">Close</button>
        </div>
    </body>
</html>
