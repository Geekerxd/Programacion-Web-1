/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.controles;

import com.mycompany.proyectofinaweb.DAO.AnonimoDAO;
import com.mycompany.proyectofinaweb.DAO.ComentarioDAO;
import com.mycompany.proyectofinaweb.modelos.AnonimoClass;
import com.mycompany.proyectofinaweb.modelos.Comentario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell 66895
 */
@WebServlet(name = "ComentarioAnonimo", urlPatterns = {"/ComentarioAnonimo"})
public class ComentarioAnonimo extends HttpServlet {

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
        String content = request.getParameter("fname");
        String idNew = request.getParameter("idNew");

        String nameAnonim = request.getParameter("nameAnonimo");

        int estado = 1;

        // inserta usuarui
        AnonimoDAO.signInUserAninim(new AnonimoClass(nameAnonim));

        //traé la id usuario
        int idusuano = AnonimoDAO.trateid(nameAnonim);

        ComentarioDAO.insertCommentaryAnonim(new Comentario(estado,idusuano, content,  Integer.parseInt(idNew, 10)));
        request.getRequestDispatcher("/ShowNewsController?id=" + idNew).forward(request, response);
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
