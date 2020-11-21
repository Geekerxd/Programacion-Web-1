/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.modelos;

/**
 *
 * @author Dell 66895
 */
public class usuario {

    private int iduser;
    private String nombre;
    private String apellidos;
    private String email;
    private String password;
    private String username;
    private int phoneNumb;
    private String usutype;

    public usuario() {
    }

    public usuario(int iduser, String nombre, String apellidos, String email, String password, String username, int phoneNumb, String usutype) {
        this.iduser = iduser;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.password = password;
        this.username = username;
        this.phoneNumb = phoneNumb;
        this.usutype = usutype;
    }

    public usuario(String nombre, String apellidos, String email, String password, String username, int phoneNumb) {

        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.password = password;
        this.username = username;
        this.phoneNumb = phoneNumb;

    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public int getPhoneNumb() {
        return phoneNumb;
    }

    public int getIduser() {
        return iduser;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPhoneNumb(int phoneNumb) {
        this.phoneNumb = phoneNumb;
    }

}
