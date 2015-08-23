/*
 * Controlador que trata dos pedidos da FrontPage e 
 * instância as várias classes de Java.
 * O pedido é respondido para a página Curriculum.jsp.
 */
package model.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.classe.Curriculo;
import model.classe.FillCurriculo;

/**
 * @author Antonio Rodrigues
 * @version 2.0
 */
@WebServlet(name = "ControladorPersonalPage", urlPatterns = {"/ControladorPersonalPage"})

public class ControladorPersonalPage extends HttpServlet {

    private static final String CONSTANT1 = "Edu";
    private static final String CONSTANT2 = "Exp";
    private static final String CONSTANT3 = "Form";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.NoSuchMethodException
     * @throws java.lang.IllegalAccessException
     * @throws java.lang.reflect.InvocationTargetException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        String[] array = null;

        if (request.getQueryString() != null) {
            array = request.getQueryString().split("\\s*[=,&]\\s*");
        }

        try {

            FillCurriculo fc = new FillCurriculo();
            Curriculo c = new Curriculo(fc.getPF(), fc.getWorkExp(), fc.getEd());

            //response to PageCurriculum.jsp
            RequestDispatcher rd
                    = request.getRequestDispatcher("PageCurriculum.jsp");
            
             RequestDispatcher rdError
                    = request.getRequestDispatcher("DefaultErrorPage.jsp");

            //personal information
            request.setAttribute("fullName", c.getPersInf().getFullName());
            request.setAttribute("Email", c.getPersInf().getEmail());
            request.setAttribute("phone", c.getPersInf().getMobilephone());
            request.setAttribute("firstName", c.getPersInf().getFirstName() + " ");
            request.setAttribute("lastName", c.getPersInf().getLastName());

            request.setAttribute("nac", c.getPersInf().getNationality());
            request.setAttribute("endT", c.getPersInf().getEndTwitter());
            request.setAttribute("endF", c.getPersInf().getEndFacebook());
            request.setAttribute("endL", c.getPersInf().getEndLinkedin());

            if (array == null) {
                //listas Experience
                request.setAttribute("expEdFisica", c.getWorkExp().listaExpTeaching("",""));
                request.setAttribute("expMonitor", c.getWorkExp().listaExpSport("",""));

                //listas Education 
                request.setAttribute("eduFormDesp", c.getEduc().listaFormSport("",""));
                request.setAttribute("eduFormProg", c.getEduc().listaFormCode("",""));
                request.setAttribute("eduSup", c.getEduc().listaEducUniversity("",""));
            } else {
                if (array[1].startsWith(CONSTANT1) || array[1].startsWith(CONSTANT3)) {

                    request.setAttribute("eduFormDesp", c.getEduc().getOrderedList(array[1], array[3], array[5]));
                }else if(array[1].startsWith(CONSTANT2)){
                    
                    request.setAttribute("expMonitor", c.getWorkExp().getOrderedList(array[1], array[3], array[5]));
                }else{
                    rdError.forward(request, response);
                }

            }

            rd.forward(request, response);

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
        try {
            processRequest(request, response);
        } catch (NoSuchMethodException | IllegalAccessException | IllegalArgumentException | InvocationTargetException ex) {
            Logger.getLogger(ControladorPersonalPage.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (NoSuchMethodException | IllegalAccessException | IllegalArgumentException | InvocationTargetException ex) {
            Logger.getLogger(ControladorPersonalPage.class.getName()).log(Level.SEVERE, null, ex);
        }
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
