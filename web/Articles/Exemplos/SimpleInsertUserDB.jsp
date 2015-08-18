<%-- 
    Document   : SimpleInsertUserDB
    Created on : Aug 31, 2014, 10:55:40 AM
    Author     : Antonio Rodrigues
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <a id="counterArticleA" href="#"><div id="counterArticle">
                <c:out value="${loopCounter4}" /> 
            </div></a>
        <h1>Form to insert into Data Base</h1>
        <p>Pequeno exemplo de um formulario e respectiva inserção dos dados numa Base de dados. 
            Para "uni-las" decidi utilizar uma servlet: ComWithDB.java</p>

        <h3>Excerto da function showForm</h3>
        <pre class="brush: js">
        function showForm() {
        newwindow = window.open('', 'newWindow', 'height=100, width=500');
        newwindow.document.write(' <form action=' + "/../../Curriculo/ComWithDB"
         + ' method="post" >\n\
            Name: <input id="nameCustomer" type="text" name="name" ><br>\n\
            Email: <input id="emailCustomer" type="text" name="email" ><br>\n\
            <input type="submit"></form>');
        if (window.focus) {
        newwindow.focus();
        }
        return false;

        }
        </pre>
        <h3>Excerto da classe ComWithDB.java</h3>
        <pre class="brush: js">
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(LINKTESTES, USER2, PASS2);
            st = connection.createStatement();
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            if (email != null && (!name.equals(" ")) && name != null && 
                (!email.equals(""))) {
                st.executeUpdate(
                    "INSERT INTO UserInsert.SimpleUserInsert (Name, Email) "
                    + "VALUES ('" + name + "','" + email + "')");
                out.println("<p>A informação foi inserida</p>");
            } else {
                out.println("<p>Os Campos nao podem estar vazios</p>");
                out.println("<p>A informação não foi inserida, tente de novo</p>");
            }
            connection.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ComWithDB.class.getName()).log(Level.SEVERE, null, ex);

        } catch (SQLException ex) {
            Logger.getLogger(ComWithDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
        </pre>
        <a href="#" onclick="showForm();">Experimentar</a><br>
        <%@include file="../MenuInsertComments.jsp" %>

    </body>
    <script type="text/javascript"> SyntaxHighlighter.all();</script>
</html>
