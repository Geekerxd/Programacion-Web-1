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
public class AnonimoClass {
    
    private int idAnonim;
    private String Nombre;

    public AnonimoClass(String Nombre) {
        this.Nombre = Nombre;
    }

    public AnonimoClass(int idAnonim, String Nombre) {
        this.idAnonim = idAnonim;
        this.Nombre = Nombre;
    }

    public int getIdAnonim() {
        return idAnonim;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setIdAnonim(int idAnonim) {
        this.idAnonim = idAnonim;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
    
    
}
