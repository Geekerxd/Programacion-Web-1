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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell 66895
 */
public class UsuarioDAO {

    public static int signInUser(usuario theUser) {
 Connection con =null;
        try {
            con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_insertausuarios(?, ?, ?, ?,?,?,?);");

            callable.setString(1, theUser.getNombre());
            callable.setString(2, theUser.getApellidos());
            callable.setString(3, theUser.getEmail());
            callable.setString(4, theUser.getPassword());
            callable.setString(5, theUser.getUsername());
            callable.setInt(6, theUser.getPhoneNumb());
            callable.setInt(7, theUser.getIDusutype());

            return callable.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static int Insertafoto(usuario theUser) {
 Connection con = null;
        try {
             con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_InsertaFotoUsuario(?, ?);");

            callable.setInt(1, theUser.getIduser());
            callable.setString(2, theUser.getFoto());

            return callable.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

    public static usuario LogInUser(usuario theUser) {
        Connection con = null;
        try {
            con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_LogInUser (?,?);");

            callable.setString(1, theUser.getEmail());
            callable.setString(2, theUser.getPassword());

            ResultSet result = callable.executeQuery();
            while (result.next()) {
                int IDusu = result.getInt("idusuario");
                String email = result.getString("email");
                String name = result.getString("nombre");
                String apellidos = result.getString("apellidos");
                int IDtipo = result.getInt("fktipousuario");
                String nombreUsu = result.getString("nombreUsu");
                String foto = result.getString("picture");

                return new usuario(IDusu, email, name, apellidos, IDtipo, nombreUsu, foto);

            }

            return null;
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
        return null;
    }

    public static usuario LogInUserByUsername(usuario theUser) {
 Connection con = null;
        try {
            con = DbConection.getConnection();

            CallableStatement callable = con.prepareCall("CALL sp_LogInUserByUsername (?,?);");

            callable.setString(1, theUser.getEmail());
            callable.setString(2, theUser.getPassword());

            ResultSet result = callable.executeQuery();
            while (result.next()) {
                int IDusu = result.getInt("idusuario");
                String email = result.getString("email");
                String name = result.getString("nombre");
                String apellidos = result.getString("apellidos");
                int IDtipo = result.getInt("fktipousuario");
                String nombreUsu = result.getString("nombreUsu");
                String foto = result.getString("picture");

                return new usuario(IDusu, email, name, apellidos, IDtipo, nombreUsu, foto);

            }

            return null;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        
        return null;
    }

    public static usuario getUser(int idUser) {
        Connection con = null;
        try {
            con = DbConection.getConnection();
            CallableStatement callable = con.prepareCall("call sp_GetUser(?)");
            callable.setInt(1, idUser);
            ResultSet result = callable.executeQuery();
            while (result.next()) {

                int id = result.getInt(1);
                String username = result.getString(2);
                String nombre = result.getString(3);
                String apellido = result.getString(4);
                String photo = result.getString(5);
                int tipoUsu = result.getInt(6);
//(int iduser, String username, int IDusutype, String foto)
                return new usuario(id, username, nombre, apellido, tipoUsu, photo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
}
