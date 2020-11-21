/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.controles;

import com.mycompany.proyectofinaweb.DAO.UsuarioDAO;
import com.mycompany.proyectofinaweb.modelos.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell 66895
 */
@WebServlet(name = "LogInController", urlPatterns = {"/LogInController"})
public class LogInController extends HttpServlet {

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        usuario theUser = new usuario(email, password);

        usuario LogUser = UsuarioDAO.LogInUser(theUser);
        if (LogUser != null) {

            HttpSession session = request.getSession();
            session.setAttribute("ELcorreo", LogUser.getEmail());
            session.setAttribute("ELidusuarios", LogUser.getIduser());
            session.setAttribute("ELnombre", LogUser.getNombre());
            session.setAttribute("LOSapellidos", LogUser.getApellidos());
            session.setAttribute("ELtipousu", LogUser.getUsutype());
            session.setAttribute("ELusername", LogUser.getUsername());
            
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("UnaNoticia.jsp");
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
    }
}
