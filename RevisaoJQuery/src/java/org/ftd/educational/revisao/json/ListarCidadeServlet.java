package org.ftd.educational.revisao.json;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ftd.educational.revisao.entities.Cidade;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.ftd.educational.catolica.prog4.daos.UserDAO;

/**
 *
 * @author Fabio Tavares Dippold
 *
 */
@WebServlet(name = "ListarCidadeServlet", urlPatterns = {"/ajax/cidade/listar"})
public class ListarCidadeServlet extends HttpServlet {

    private static final long serialVersionUID = -6775036502776251602L;
    private static final String PERSISTENCE_UNIT_NAME = "persistenciaPU";

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

        try {
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            Logger.getLogger(ListarCidadeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.buildAjaxResponse(request, response);

    }

    private void buildAjaxResponse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/plain");
        
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        
        UserDAO userDao = new UserDAO(factory);
        
        List<Cidade> cidades = new ArrayList<>();
        cidades.add(new Cidade(1,"Rio de Janeiro","RJ"));
        cidades.add(new Cidade(2,"São Paulo","SP"));
        cidades.add(new Cidade(3,"Curitiba","PR"));
        cidades.add(new Cidade(4,"Florianópolis","SC"));
        cidades.add(new Cidade(5,"Porto Alegre","SC"));
        
        Gson gson = new Gson();
        String json = gson.toJson(userDao.findUserEntities());
        
        PrintWriter out = response.getWriter();
        out.append(json);
        out.flush();
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
