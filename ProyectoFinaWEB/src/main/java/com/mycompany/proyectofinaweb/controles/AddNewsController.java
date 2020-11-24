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
import javax.servlet.http.Part;

/**
 *
 * @author Dell 66895
 */
@WebServlet(name = "AddNewsController", urlPatterns = {"/AddNewsController"})
public class AddNewsController extends HttpServlet {

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
        List<Categoria> categories = categoryDAO.getCategories();
        request.setAttribute("Categories", categories);
        request.getRequestDispatcher("CMS.jsp").forward(request, response);
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

        String title = request.getParameter("title");
        String contenido = request.getParameter("contenido");
        String description = request.getParameter("descripcion");
        int idCategory =0;// Integer.parseInt(request.getParameter("category"), 10)
        int idUsuario=4;
        //aqui se busca la ID del editor/creador
        int idEditor=0;
        //Part file = request.getPart("image");

        //String path = request.getServletContext().getRealPath("");
        //String contentType = file.getContentType();
        // String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        //String fullPath = path  + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
        //file.write(fullPath);
        Noticia newNews = new Noticia(title, contenido,description,idEditor,idCategory);
        NoticiaDAO.insertNews(newNews);

        //List<Category> categories = CategoryDAO.getCategories();
        List<Noticia> news = NoticiaDAO.getNews();
        //request.setAttribute("Categories", categories);
        request.setAttribute("News", news);

        request.getRequestDispatcher("index.jsp").forward(request, response);

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
