/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.AnonimoClass;
import com.mycompany.proyectofinaweb.modelos.usuario;
import com.mycompany.proyectofinaweb.utls.DbConection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell 66895
 */
public class AnonimoDAO {

    public static int signInUserAninim(AnonimoClass theUser) {
        Connection con = null;
        try {
            con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_creaAnonimo(?);");

            callable.setString(1, theUser.getNombre());

            return callable.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AnonimoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    
    
     public static int trateid(String theUser) {
        Connection con = null;
        int IDusu=-1;
        try {
            con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_traeIdAnonim(?);");

            callable.setString(1, theUser);
          
            ResultSet result = callable.executeQuery();
            while (result.next()) {
                 IDusu = result.getInt("idanonimo");
               
                return IDusu;

            }

            return IDusu;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return IDusu;
    }

    
    
    
    
    
    
}
