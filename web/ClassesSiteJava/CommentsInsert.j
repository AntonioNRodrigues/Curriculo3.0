/*
 * Servlet that serves to del with the inserction of comments into the data base
 */
package model.controlador;

import model.connections.MyConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Antonio Rodrigues
 * @version 1.0
 * @Date 2014/09/06
 */
@WebServlet(name = "CommentsInsert", urlPatterns = {"/CommentsInsert"})
public class CommentsInsert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection connection = null;
        Statement st;
        ResultSet rs;
        String controlo = "1";
        MyConnection MyCon = new MyConnection();
        try {
            Map<String, String[]> mapaParametros = request.getParameterMap();

            String name = null;
            String comment = null;
            String date = null;
            int articleNumber = 0;

            for (String key : mapaParametros.keySet()) {
                for (String value : mapaParametros.get(key)) {
                    if (key.equals("name")) {
                        name = value;
                    }
                    if (key.equals("comment")) {
                        comment = value;
                    }
                    if (key.equals("date")) {
                        date = value;
                    }
                    if (key.equals("numberArticle")) {
                        try {
                            articleNumber = Integer.parseInt(value);
                        } catch (NumberFormatException e) {
                            System.err.println("this is not a number");
                            System.err.println(e.fillInStackTrace());
                            controlo = "-1";
                        }
                    }
                }
            }
            if (name != null && comment != null && articleNumber > 0) {

                Class.forName(MyCon.getDriver());
                connection = DriverManager.getConnection(MyCon.getLinkServerBeta(),
                        MyCon.getUserServerBeta(), MyCon.getPassServerBeta());
                st = connection.createStatement();

                st.executeUpdate("INSERT INTO commentsArticles(Name, Comment, ArticleNumber, Date) "
                        + "VALUES ('" + name + "','" + comment + "','" + articleNumber + "','" + date + "')");
                connection.close();
            }

            out.print(controlo);// var de controlo mandada para o ajax (function ---> insertComment(elemento))

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CommentsInsert.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CommentsInsert.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
