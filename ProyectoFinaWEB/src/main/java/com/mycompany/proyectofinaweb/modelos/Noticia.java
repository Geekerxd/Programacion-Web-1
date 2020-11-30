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
    private int idUsuario;
  private String imageThumbnail;
   
    private Categoria category;
     private String descripcion;

    public Noticia() {
    }

    public Noticia(int id, String title, int visitas, String fecha, String contenido, int estado, int likes, int dislikes, int idEditor, int idCreador, int idAdmin,Categoria category, String descripcion) {
        this.id = id;
        this.title = title;
        this.visitas = visitas;
        this.fecha = fecha;
        this.contenido = contenido;
        this.estado = estado;
        this.likes = likes;
        this.category = category;
        this.descripcion=descripcion;
    }
    //Noticia(id, title, visitas, fecha, contendido, estado, likes, dislikes,idusuario, category, descri)
     public Noticia(int id, String title, int visitas, String fecha, String contenido, int estado, int likes, int dislikes, int idUsuario,Categoria category, String descripcion,String thumbnail) {
        this.id = id;
        this.title = title;
        this.visitas = visitas;
        this.fecha = fecha;
        this.contenido = contenido;
        this.estado = estado;
        this.likes = likes;
        this.dislikes=dislikes;
        this.idUsuario=idUsuario;
        this.category = category;
        this.descripcion=descripcion;
        this.imageThumbnail=thumbnail;
    }
    
    
 public Noticia(String title,String contenido,String descripcion,  int idEditor, Categoria category) {
    
        this.title = title;
        this.contenido = contenido;
        this.descripcion=descripcion;
         this.category = category;
        
    }
 //title, contenido,description,estado,idUsuario,new Categoria(idCategory)
  public Noticia(String title,String contenido,String descripcion,  int estado, int idusu, Categoria category, String thumnail) {
    
        this.title = title;
        this.contenido = contenido;
        this.descripcion=descripcion;
         this.category = category;
        this.estado=estado;
        this.idUsuario=idusu;
        this.imageThumbnail=thumnail;
    }

    public String getImageThumbnail() {
        return imageThumbnail;
    }

    public void setImageThumbnail(String imageThumbnail) {
        this.imageThumbnail = imageThumbnail;
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


    public Categoria getCategoria() {
        return category;
    }

    public void setIdCategoria(Categoria category) {
        this.category = category;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idusu) {
        this.idUsuario = idusu;
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
