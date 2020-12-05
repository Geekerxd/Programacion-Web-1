/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.Comentario;
import com.mycompany.proyectofinaweb.modelos.usuario;
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
public class ComentarioDAO {

    public static int insertCommentary(Comentario element) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_creaComentario(?,?,?,?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, element.getEstado());
            statement.setString(2, element.getContenido());
            statement.setInt(3, element.getIdusuario());
            statement.setInt(4, element.getIdnoticia());

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static List<Comentario> getCommentariesByNew(int idNew) {
        List<Comentario> commentaries = new ArrayList<>();
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_getCommentariesByID(?);";
            CallableStatement statement = con.prepareCall(sql);
            statement.setInt(1, idNew);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int idcommentary = result.getInt(1);
                int estado = result.getInt(2);
                String content = result.getString(3);
                String date = result.getString(4);
                int likes = result.getInt(5);
                int dislikes = result.getInt(6);
                
                int idUser = result.getInt(7);
                int idAnonimo = result.getInt(8);
                int idNews = result.getInt(9);
                

                usuario user = UsuarioDAO.getUser(idUser);

                commentaries.add(new Comentario(idcommentary, estado,content,date,likes,dislikes, user, idAnonimo, idNews));
            }
            return commentaries;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return commentaries;
    }

    
    public static int deleteCommentary(int id) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_DeleteCommentary(?)";
            CallableStatement statement = con.prepareCall(sql);
            statement.setInt(1, id);
            return statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if(con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ComentarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        
        return 0;
    }
    
}
