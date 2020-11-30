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

        //traemos los datos del form
        String title = request.getParameter("title");
        String contenido = request.getParameter("contenido");
        String description = request.getParameter("descripcion");
        int idCategory = Integer.parseInt(request.getParameter("category"), 10);

        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"), 10);
        int contador = Integer.parseInt(request.getParameter("elcontador"), 10) - 1;//es el contador de imagenes
        int estado = 0;//defaul

        //obtenemos la ruta de la imagen
//desde aqui
        Part file = request.getPart("image");

        String path = request.getServletContext().getRealPath("");
        String contentType = file.getContentType();
        String NameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + NameImage;
        file.write(fullPath);
// hasta aqui Y...
        //insertamos  los datos el la tabla de noticias
        Noticia newNews = new Noticia(title, contenido, description, estado, idUsuario, new Categoria(idCategory), FileUtils.RUTE_USER_IMAGE + "/" + NameImage);
        NoticiaDAO.insertNews(newNews);

        //insertamos esto en la tabla de imagenes
        int idNoticia = NoticiaDAO.getIDNotiBythings(newNews);
        if (idNoticia != 0) {

            Imagen Laimagen = new Imagen(FileUtils.RUTE_USER_IMAGE + "/" + NameImage, idNoticia); 
            ImageDAO.insertaImagen(Laimagen);

            for (int i = 0; i < contador - 1; i++) {// se insertan las demás que no es la primera
                int numero = i+2;
                String nuevo = "Imagen" + numero;
                Part file2 = request.getPart(nuevo);

                String path2 = request.getServletContext().getRealPath("");
                String contentType2 = file2.getContentType();
                String NameImage2 = file2.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType2);
                String fullPath2 = path2 + FileUtils.RUTE_USER_IMAGE + "/" + NameImage2;
                file2.write(fullPath2);

                Laimagen = new Imagen(FileUtils.RUTE_USER_IMAGE + "/" + NameImage2, idNoticia);

                ImageDAO.insertaImagen(Laimagen);
            }

        }

        List<Categoria> categories = categoryDAO.getCategories();
        List<Noticia> news = NoticiaDAO.getNews();
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
