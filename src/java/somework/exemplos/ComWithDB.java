/*
 * Communication with DB.
 */
package somework.exemplos;


import model.connections.MyConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
 */
@WebServlet(name = "ComWithDB", urlPatterns = {"/ComWithDB"})
public class ComWithDB extends HttpServlet {

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
        Connection connection;
        Statement st;
        ResultSet rs;
        MyConnection MyCon = new MyConnection();
        try {
            Class.forName(MyCon.getDriver());
                 connection = DriverManager.getConnection(MyCon.getLinkServer(),
                        MyCon.getUserServer(), MyCon.getPassServer());
            st = connection.createStatement();
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            if (email != null && (!name.equals(" ")) && name != null && (!email.equals(""))) {
                st.executeUpdate("INSERT INTO comments.insertArticleExample (Name, Email) VALUES ('" + name + "','" + email + "')");
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
