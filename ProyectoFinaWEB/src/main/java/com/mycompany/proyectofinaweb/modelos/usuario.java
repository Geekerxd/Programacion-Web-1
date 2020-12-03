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
    private int IDusutype;
    private String foto;

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

    public usuario(String nombre, String apellidos, String email, String password, String username, int phoneNumb, int IDusutype) {

        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.password = password;
        this.username = username;
        this.phoneNumb = phoneNumb;
        this.IDusutype = IDusutype;
    }

    public usuario(int iduser, String email, String nombre, String apellidos, int idtype, String username, String foto) {
        this.iduser = iduser;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.username = username;
        this.IDusutype = idtype;
        this.foto = foto;
    }

    public usuario(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public usuario(int iduser, String email) {
        this.iduser = iduser;
        this.email = email;
    }

    public usuario(String foto,int iduser ) {
        this.iduser = iduser;
       
        this.foto = foto;
    }

    
    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getFoto() {
        return foto;
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

    public String getUsutype() {
        return usutype;
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

    public void setIDusutype(int IDusutype) {
        this.IDusutype = IDusutype;
    }

    public int getIDusutype() {
        return IDusutype;
    }

}
