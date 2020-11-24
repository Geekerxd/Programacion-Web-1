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
public class Noticia {
    private int id;
    private String title;
    private int visitas;
    private String fecha;
    private String contenido;
    private int estado;
    private int likes;
    private int dislikes;
    private int idEditor;
    private int idCreador;
    private int idAdmin;
    private int idCategoria;
     private String descripcion;

    public Noticia() {
    }

    public Noticia(int id, String title, int visitas, String fecha, String contenido, int estado, int likes, int dislikes, int idEditor, int idCreador, int idAdmin, int idCategoria, String descripcion) {
        this.id = id;
        this.title = title;
        this.visitas = visitas;
        this.fecha = fecha;
        this.contenido = contenido;
        this.estado = estado;
        this.likes = likes;
        this.dislikes = dislikes;
        this.idEditor = idEditor;
        this.idCreador = idCreador;
        this.idAdmin = idAdmin;
        this.idCategoria = idCategoria;
        this.descripcion=descripcion;
    }
 public Noticia(String title,String contenido,String descripcion,  int idEditor,  int idCategoria) {
    
        this.title = title;
        this.contenido = contenido;
        this.descripcion=descripcion;
        this.idEditor = idEditor;
        this.idCategoria = idCategoria;
        
    }
    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getDislikes() {
        return dislikes;
    }

    public void setDislikes(int dislikes) {
        this.dislikes = dislikes;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public int getIdCreador() {
        return idCreador;
    }

    public void setIdCreador(int idCreador) {
        this.idCreador = idCreador;
    }

    public int getIdEditor() {
        return idEditor;
    }

    public void setIdEditor(int idEditor) {
        this.idEditor = idEditor;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getVisitas() {
        return visitas;
    }

    public void setVisitas(int visitas) {
        this.visitas = visitas;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
}
