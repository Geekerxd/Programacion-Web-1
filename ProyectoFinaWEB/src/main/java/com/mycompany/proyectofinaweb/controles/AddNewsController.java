/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.controles;

import com.mycompany.proyectofinaweb.DAO.ImageDAO;
import com.mycompany.proyectofinaweb.DAO.NoticiaDAO;
import com.mycompany.proyectofinaweb.DAO.categoryDAO;
import com.mycompany.proyectofinaweb.modelos.Categoria;
import com.mycompany.proyectofinaweb.modelos.Imagen;
import com.mycompany.proyectofinaweb.modelos.Noticia;
import com.mycompany.proyectofinaweb.utls.FileUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 25)
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
        int idCategory = Integer.parseInt(request.getParameter("category"), 10);

        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"), 10);
        int estado = 0;//defaul

        Noticia newNews = new Noticia(title, contenido, description, estado, idUsuario, new Categoria(idCategory));
        NoticiaDAO.insertNews(newNews);
        List<Categoria> categories = categoryDAO.getCategories();
        List<Noticia> news = NoticiaDAO.getNews();

        Part file = request.getPart("image");

        String path = request.getServletContext().getRealPath("");
        String contentType = file.getContentType();
        String NameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + NameImage;
        file.write(fullPath);
        //insertamos esto en la entidad imagen //FileUtils.RUTE_USER_IMAGE + "/" + nameImage

        int idNoticia = NoticiaDAO.getIDNotiBythings(newNews);
        if (idNoticia != 0) {
            Imagen Laimagen = new Imagen(FileUtils.RUTE_USER_IMAGE + "/" + NameImage, idNoticia);
            
            ImageDAO.insertaImagen(Laimagen);
        }

        request.setAttribute("Categories", categories);
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
