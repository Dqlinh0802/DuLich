/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.pojos;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Acer
 */
@Entity
@Table(name = "ve")
public class Ve implements Serializable{

    

    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenVe;

    //nhieu Tour
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idTour")
    private Tour tour;
    
    @OneToMany(mappedBy = "ve", fetch = FetchType.EAGER)//gắn với thuộc tính trong class bên kết nối
    private List<VeCuaKhach> veCuaKhachs;
    
    
    
    
    
    
    
    /**
     * @return the veCuaKhachs
     */
    public List<VeCuaKhach> getVeCuaKhachs() {
        return veCuaKhachs;
    }

    /**
     * @param veCuaKhachs the veCuaKhachs to set
     */
    public void setVeCuaKhachs(List<VeCuaKhach> veCuaKhachs) {
        this.veCuaKhachs = veCuaKhachs;
    }
    
    /**
     * @return the tour
     */
    public Tour getTour() {
        return tour;
    }

    /**
     * @param tour the tour to set
     */
    public void setTour(Tour tour) {
        this.tour = tour;
    }
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the tenVe
     */
    public String getTenVe() {
        return tenVe;
    }

    /**
     * @param tenVe the tenVe to set
     */
    public void setTenVe(String tenVe) {
        this.tenVe = tenVe;
    }
    
    
    
}
