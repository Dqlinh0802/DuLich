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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Acer
 */
@Entity
@Table(name = "phuongtien")
public class PhuongTien implements Serializable{

    

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenPhuongTien;
    private int soCho;
    
    @OneToMany(mappedBy = "phuongTien", fetch = FetchType.EAGER)//gắn với thuộc tính trong class bên kết nối
    private List<TourDiPhuongTien> tourDiPhuongTiens;
    
    
    
    
    

    /**
     * @return the tourDiPhuongTiens
     */
    public List<TourDiPhuongTien> getTourDiPhuongTiens() {
        return tourDiPhuongTiens;
    }

    /**
     * @param tourDiPhuongTiens the tourDiPhuongTiens to set
     */
    public void setTourDiPhuongTiens(List<TourDiPhuongTien> tourDiPhuongTiens) {
        this.tourDiPhuongTiens = tourDiPhuongTiens;
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
     * @return the tenPhuongTien
     */
    public String getTenPhuongTien() {
        return tenPhuongTien;
    }

    /**
     * @param tenPhuongTien the tenPhuongTien to set
     */
    public void setTenPhuongTien(String tenPhuongTien) {
        this.tenPhuongTien = tenPhuongTien;
    }

    /**
     * @return the soCho
     */
    public int getSoCho() {
        return soCho;
    }

    /**
     * @param soCho the soCho to set
     */
    public void setSoCho(int soCho) {
        this.soCho = soCho;
    }
}
