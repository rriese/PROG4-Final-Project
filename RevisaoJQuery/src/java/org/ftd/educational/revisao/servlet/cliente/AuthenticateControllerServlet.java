/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ftd.educational.revisao.servlet.cliente;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.ftd.educational.catolica.prog4.daos.UserDAO;
import org.ftd.educational.catolica.prog4.entities.User;
import org.ftd.educational.revisao.json.ListarCidadeServlet;

/**
 *
 * @author rafael.riese
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class AuthenticateControllerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String PERSISTENCE_UNIT_NAME = "persistenciaPU";

    private void buildAjaxResponse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        User user = null;
        String login = request.getParameter("login");
        String senha = request.getParameter("passwd");
        try {
            user = dao.authenticate(login, senha);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (user != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("userid", Long.toString(user.getId()));
            session.setAttribute("username", user.getName());
            response.sendRedirect("index.html");
            //request.getRequestDispatcher("index.html").forward(request, response);
        } else {
            StringBuilder strB = new StringBuilder();
            strB.append("<div class=\"alert alert-danger\">");
            strB.append(" <strong>Erro!</strong> Login e/ou senha incorretos.");
            strB.append("</div>");
            response.getWriter().write(strB.toString());
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            Logger.getLogger(ListarCidadeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.buildAjaxResponse(request, response);
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
