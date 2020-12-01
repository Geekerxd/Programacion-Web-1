/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.Categoria;
import com.mycompany.proyectofinaweb.modelos.Imagen;
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
public class ImageDAO {
    
     public static int insertaImagen(Imagen LaImagen ) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_insertaImagen(?, ?);";
            CallableStatement statement = con.prepareCall(sql);
            statement.setString(1, LaImagen.getImagePath());
            statement.setInt(2, LaImagen.getIdNoticiaFk());
        
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
    
     
     
      public static List<Imagen> getImagesByNoti(int idNoti){
      
      List<Imagen> unaListaI = new ArrayList<>();

        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_obtieneImagenesDeNoticia(?);";
            CallableStatement statement = con.prepareCall(sql); 
            statement.setInt(1, idNoti);
            
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                
                String data = result.getString(1);

                unaListaI.add(new Imagen(data));
            }

            return unaListaI;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(categoryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        return unaListaI;
      
      }
     
}
