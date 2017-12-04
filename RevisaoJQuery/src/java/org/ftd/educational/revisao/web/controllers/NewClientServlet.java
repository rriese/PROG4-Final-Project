/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ftd.educational.revisao.web.controllers;

import java.io.IOException;
import java.io.PrintWriter;
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
import org.ftd.educational.revisao.util.Util;

/**
 *
 * @author rafael.riese
 */
@WebServlet(name = "new", urlPatterns = {"/new"})
public class NewClientServlet extends HttpServlet {

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

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String user = request.getParameter("user");
        String passwd = request.getParameter("passwd");

        if (name != null && email != null && cpf != null && user != null && passwd != null) {
            EntityManagerFactory factory = Persistence.createEntityManagerFactory(Util.PERSISTENCE_UNIT_NAME);
            UserDAO dao = new UserDAO(factory);
            User dbUser = new User(name, cpf, email, user, passwd);
            
            dao.create(dbUser);
            
            HttpSession session = request.getSession(true);
            session.setAttribute("userid", Long.toString(dbUser.getId()));
            session.setAttribute("username", dbUser.getName());
            request.getRequestDispatcher("appcontroller?do=initial").forward(request, response);
        } else {
            StringBuilder strB = new StringBuilder();
            strB.append("<div class=\"alert alert-danger\">");
            strB.append("<center><strong>Erro!</strong> Preencha todos os campos.</center>");
            strB.append("</div>");
            request.setAttribute("msg", strB);
            request.getRequestDispatcher("newClient.jsp").forward(request, response);
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
