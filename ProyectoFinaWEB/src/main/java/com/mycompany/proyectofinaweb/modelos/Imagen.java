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
public class Imagen {
    
    private int id;
    private String imagePath;
    private int idNoticiaFk;

    public Imagen() {
    }

    public Imagen(int id, String imagePath, int idNoticiaFk) {
        this.id = id;
        this.imagePath = imagePath;
        this.idNoticiaFk = idNoticiaFk;
    }

    public Imagen(  String imagePath, int idNoticiaFk) {
        
        this.imagePath = imagePath;
        this.idNoticiaFk = idNoticiaFk;
    }
    
       public Imagen(  String imagePath) {
        
        this.imagePath = imagePath;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdNoticiaFk() {
        return idNoticiaFk;
    }

    public void setIdNoticiaFk(int idNoticiaFk) {
        this.idNoticiaFk = idNoticiaFk;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
