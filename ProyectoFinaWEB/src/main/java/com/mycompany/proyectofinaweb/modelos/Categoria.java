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
public class Categoria {
    private int ID;
    private String CategoryName;

    public Categoria() {
    }

    public Categoria(int ID, String CategoryName) {
        this.ID = ID;
        this.CategoryName = CategoryName;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String CategoryName) {
        this.CategoryName = CategoryName;
    }
    
    
}
