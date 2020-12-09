/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.controles;

import com.mycompany.proyectofinaweb.DAO.NoticiaDAO;
import com.mycompany.proyectofinaweb.DAO.categoryDAO;
import com.mycompany.proyectofinaweb.modelos.Categoria;
import com.mycompany.proyectofinaweb.modelos.Noticia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell 66895
 */
@WebServlet(name = "BuscaPalabraController", urlPatterns = {"/BuscaPalabraController"})
public class BuscaPalabraController extends HttpServlet {

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

        String palabra = request.getParameter("buscador");

        List<Categoria> categories = categoryDAO.getCategories();
        List<Noticia> news = NoticiaDAO.getNewsByWord(palabra);
        request.setAttribute("Categories", categories);
        request.setAttribute("News", news);
        request.getRequestDispatcher("AllNoticias.jsp").forward(request, response);

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
