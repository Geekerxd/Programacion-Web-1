/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.Categoria;
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
public class categoryDAO {

    public static List<Categoria> getCategories() {

        List<Categoria> unaListaC = new ArrayList<>();

        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_GetCategories();";
            CallableStatement statement = con.prepareCall(sql);

            ResultSet result = statement.executeQuery();

            while (result.next()) {
                int id = result.getInt(1);
                String name = result.getString(2);

                unaListaC.add(new Categoria(id, name));
            }

            return unaListaC;
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

        return unaListaC;
    }
    
    public static Categoria getCategories(int idCategory) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            String sql = "CALL sp_GetCategoriesID(?);";
            CallableStatement statement = con.prepareCall(sql);
            statement.setInt(1, idCategory);
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                int id = result.getInt(1);
                String name = result.getString(2);
                
                
                return new Categoria(id, name);
            }
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
        return null;
    }
}
