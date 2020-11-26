/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.Categoria;
import com.mycompany.proyectofinaweb.modelos.Noticia;
import com.mycompany.proyectofinaweb.utls.DbConection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell 66895
 */
public class NoticiaDAO {

    public static int insertNews(Noticia news) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_insertaNoticia(?,?,?,?,?,?,?,?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setString(1, news.getTitle());
            statement.setString(2, news.getContenido());
            statement.setString(3, news.getDescripcion());
            statement.setInt(4, 1);//news.getEstado()
            statement.setInt(5, 1);// news.getIdEditor()
            statement.setInt(6, 1);//news.getIdCreador()
            statement.setInt(7, 1);//news.getIdAdmin()
            statement.setInt(8, news.getCategoria().getID());

            //statement.setString(4, news.getImagePath());
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NoticiaDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static List<Noticia> getNews() {
        List<Noticia> news = new ArrayList<>();
        Connection con = null;

        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_getNoticia();";
            CallableStatement statement = con.prepareCall(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int id = result.getInt(1);
                String title = result.getString(2);
                int visitas = result.getInt(3);
                String fecha = result.getString(4);
                String contendido = result.getString(5);
                int estado = result.getInt(6);
                int likes = result.getInt(7);
                int dislikes = result.getInt(8);
                int idEditor = result.getInt(9);
                int idCreador = result.getInt(10);
                int idAdmin = result.getInt(11);
                int idCategoria = result.getInt(12);
                Categoria category = categoryDAO.getCategories(idCategoria);
                String descri = result.getString(13);

                news.add(new Noticia(id, title, visitas, fecha, contendido, estado, likes, dislikes,
                        idEditor, idCreador, idAdmin, category, descri));

            }
            return news;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NoticiaDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return news;
    }

}
