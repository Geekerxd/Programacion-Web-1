/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.DAO;

import com.mycompany.proyectofinaweb.modelos.usuario;
import com.mycompany.proyectofinaweb.utls.DbConection;
import com.mysql.cj.xdevapi.Result;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dell 66895
 */
public class UsuarioDAO {

    public static int signInUser(usuario theUser) {

        try {
            Connection con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_insertausuarios(?, ?, ?, ?,?,?);");

            callable.setString(1, theUser.getNombre());
            callable.setString(2, theUser.getApellidos());
            callable.setString(3, theUser.getEmail());
            callable.setString(4, theUser.getPassword());
            callable.setString(5, theUser.getUsername());
            callable.setInt(6, theUser.getPhoneNumb());

            return callable.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return 0;
    }
    
    
    public static usuario LogInUser(usuario theUser) {

        try {
            Connection con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_LogInUser (?,?);");

            callable.setString(1, theUser.getEmail());
            callable.setString(2, theUser.getPassword());

            ResultSet result =callable.executeQuery();
            while(result.next()){
            int IDusu=  result.getInt("idusuario");
            String email=  result.getString("email");
            String name=  result.getString("nombre");
            String apellidos=  result.getString("apellidos");
            String tipoUsu=  result.getString("tipoUsu");
            String nombreUsu=  result.getString("nombreUsu");
             String foto=  result.getString("picture");
            
            return new usuario (IDusu,email,name,apellidos,tipoUsu,nombreUsu,foto);
            
            }
            
            return null;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    public static usuario LogInUserByUsername(usuario theUser) {

        try {
            Connection con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_LogInUserByUsername (?,?);");

            callable.setString(1, theUser.getEmail());
            callable.setString(2, theUser.getPassword());

            ResultSet result =callable.executeQuery();
            while(result.next()){
            int IDusu=  result.getInt("idusuario");
            String email=  result.getString("email");
            String name=  result.getString("nombre");
            String apellidos=  result.getString("apellidos");
            String tipoUsu=  result.getString("tipoUsu");
            String nombreUsu=  result.getString("nombreUsu");
            String foto=  result.getString("picture");
            
            return new usuario (IDusu,email,name,apellidos,tipoUsu,nombreUsu,foto);
            
            }
            
            return null;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
    
}
