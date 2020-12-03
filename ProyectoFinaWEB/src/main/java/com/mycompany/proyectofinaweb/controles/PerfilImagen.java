/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.controles;

import com.mycompany.proyectofinaweb.DAO.NoticiaDAO;
import com.mycompany.proyectofinaweb.DAO.UsuarioDAO;
import com.mycompany.proyectofinaweb.DAO.categoryDAO;
import com.mycompany.proyectofinaweb.modelos.Categoria;
import com.mycompany.proyectofinaweb.modelos.Noticia;
import com.mycompany.proyectofinaweb.modelos.usuario;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Dell 66895
 */
@WebServlet(name = "PerfilImagen", urlPatterns = {"/PerfilImagen"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 25)
public class PerfilImagen extends HttpServlet {

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
        request.getRequestDispatcher("perfilUsuario.jsp").forward(request, response);
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

        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"), 10);
        //desde aqui
        Part file = request.getPart("image");

        String path = request.getServletContext().getRealPath("");
        String contentType = file.getContentType();
        String NameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + NameImage;
        file.write(fullPath);
        // hasta aqui Y...
        usuario elusuaruio = new usuario(FileUtils.RUTE_USER_IMAGE + "/" + NameImage, idUsuario);
        UsuarioDAO.Insertafoto(elusuaruio);
        HttpSession session = request.getSession();
        session.setAttribute("Lafoto", elusuaruio.getFoto());

        List<Categoria> categories = categoryDAO.getCategories();
        List<Noticia> news = NoticiaDAO.getNews();
        request.setAttribute("Categories", categories);
        request.setAttribute("News", news);

        request.getRequestDispatcher("perfilUsuario.jsp").forward(request, response);

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
