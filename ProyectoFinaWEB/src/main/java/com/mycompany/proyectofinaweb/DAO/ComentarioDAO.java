/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.Comentario;
import com.mycompany.proyectofinaweb.utls.DbConection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
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
            String sql = "CALL InsertCommentary(?,?,?,?);";
            CallableStatement statement = con.prepareCall(sql);
//
//            statement.setString(1, element.getContent());
//            statement.setInt(2, element.getUser().getId());
//            statement.setInt(3, element.getIdNews());
//            statement.setInt(4, element.getParent());

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
    
    
    
    
    
    
}
