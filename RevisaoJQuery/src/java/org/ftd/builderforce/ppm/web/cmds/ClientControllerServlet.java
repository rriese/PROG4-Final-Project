package org.ftd.builderforce.ppm.web.cmds;

import java.io.IOException;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ftd.educational.catolica.prog4.daos.UserDAO;
import org.ftd.educational.catolica.prog4.entities.User;

/**
 *
 * @author ftdippold
 */
@WebServlet(name = "ClientControllerServlet", urlPatterns = {"/mvcmenu"}, initParams = {
    @WebInitParam(name = "do", value = "")})

public class ClientControllerServlet extends HttpServlet {

    private static final long serialVersionUID = -1587237767624179860L;

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = this.readParameter(request, "do");
        String nextAction;
        switch (action) {
            case "initial":
                nextAction = buildLstModel(request, response);
                break;
            case "showclient":
                nextAction = buildClientModel(request, response);
                break;
            case "updmodel":
                nextAction = buildUpdModel(request, response);
                break;
            case "readmodel":
                nextAction = buildReadModel(request, response);
                break;
            case "add":
                nextAction = doAddNew(request, response);
                break;
            case "upd":
                nextAction = doUpdate(request, response);
                break;
            case "del":
                nextAction = doRemove(request, response);
                break;
            default:
                request.setAttribute("msg", "Erro controller: recebi obscuro do=" + action);
                nextAction = "signin.jsp";
        }

        request.getRequestDispatcher(nextAction).forward(request, response);
    }
    
    public void setUserToMenu(HttpServletRequest request) {
        request.setAttribute("userName", (String) request.getSession().getAttribute("username"));
    }

    private String buildLstModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/index.jsp";

        this.setUserToMenu(request);
        
        return nextAction;
    }

    private String buildClientModel(HttpServletRequest request, HttpServletResponse response) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenciaPU");
        UserDAO dao = new UserDAO(factory);
        List<User> user = null;

        user = dao.findUserEntities();

        request.setAttribute("allUsers", user);
        this.setUserToMenu(request);
        
        String nextAction = "/WEB-INF/views/users.jsp";

        return nextAction;
    }

    private String buildUpdModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/UpdUserView.jsp";
        String id = this.readParameter(request, "id");

        return nextAction;
    }

    private String buildReadModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/ReadUserView.jsp";
        String id = this.readParameter(request, "id");

        return nextAction;
    }

    private String doAddNew(HttpServletRequest request, HttpServletResponse response) {
        String successNextAction = "user?do=lstmodel";
        String failureNextAction = "user?do=addmodel";

        return successNextAction;
    }

    private String doUpdate(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = "user?do=lstmodel";
        String failureNextAction = "user?do=updmodel&id=" + id;

        return successNextAction;
    }

    private String doRemove(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = "user?do=lstmodel";
        String failureNextAction = "user?do=readmodel&id=" + id;

        return successNextAction;
    }

    private String readParameter(HttpServletRequest req, String parameterName) {
        return readParameter(req, parameterName, "");
    }

    private String readParameter(HttpServletRequest req, String parameterName, String defaultValue) {
        String value = req.getParameter(parameterName);
        if ((value == null) || (value.equals(""))) {
            value = defaultValue;
        }

        return value;
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
