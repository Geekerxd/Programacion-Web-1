/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinaweb.modelos;

import java.util.logging.Logger;

/**
 *
 * @author Dell 66895
 */
public class Comentario {
    private int id ;
    private int estado;
    private String contenido;
    private String NombreUsuario;
    private usuario ElUsuario;
    private String fecha;
    private int likes;
    private int dislikes;
    private int idusuario;
    private int idanonimo;
    private int idnoticia;

    public Comentario() {
    }

    public Comentario(int estado, String contenido, String NombreUsuario, int idusuario, int idnoticia) {
        this.estado = estado;
        this.contenido = contenido;
        this.NombreUsuario = NombreUsuario;
        this.idusuario = idusuario;
        this.idnoticia = idnoticia;
    }

    public Comentario(int estado, String contenido,  int idusuario, int idnoticia) {
        this.estado = estado;
        this.contenido = contenido;
        this.idusuario = idusuario;
        this.idnoticia = idnoticia;
    }
      public Comentario(int estado, String contenido,usuario ElUsuario, int idnoticia) {
        this.estado = estado;
        this.contenido = contenido;
        this.ElUsuario=ElUsuario;
        this.idnoticia = idnoticia;
    }
    
    public Comentario(int id, int estado, String contenido, String NombreUsuario, String fecha, int likes, int dislikes, int idusuario, int idanonimo, int idnoticia) {
        this.id = id;
        this.estado = estado;
        this.contenido = contenido;
        this.NombreUsuario = NombreUsuario;
        this.fecha = fecha;
        this.likes = likes;
        this.dislikes = dislikes;
        this.idusuario = idusuario;
        this.idanonimo = idanonimo;
        this.idnoticia = idnoticia;
    }
  public Comentario(int id, int estado, String contenido,   String fecha, int likes, int dislikes,usuario ElUsuario, int idanonimo, int idnoticia) {
        this.id = id;
        this.estado = estado;
        this.contenido = contenido; 
        this.fecha = fecha;
        this.likes = likes;
        this.dislikes = dislikes;
        this.ElUsuario = ElUsuario;
        this.idanonimo = idanonimo;
        this.idnoticia = idnoticia;
    }
    public usuario getElUsuario() {
        return ElUsuario;
    }

    public void setElUsuario(usuario ElUsuario) {
        this.ElUsuario = ElUsuario;
    }
   
    public int getId() {
        return id;
    }

    public int getEstado() {
        return estado;
    }

    public String getContenido() {
        return contenido;
    }

    public String getNombreUsuario() {
        return NombreUsuario;
    }

    public String getFecha() {
        return fecha;
    }

    public int getLikes() {
        return likes;
    }

    public int getDislikes() {
        return dislikes;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public int getIdanonimo() {
        return idanonimo;
    }

    public int getIdnoticia() {
        return idnoticia;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public void setNombreUsuario(String NombreUsuario) {
        this.NombreUsuario = NombreUsuario;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public void setDislikes(int dislikes) {
        this.dislikes = dislikes;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public void setIdanonimo(int idanonimo) {
        this.idanonimo = idanonimo;
    }

    public void setIdnoticia(int idnoticia) {
        this.idnoticia = idnoticia;
    }
    
    
    
}
