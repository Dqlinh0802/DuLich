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
@Table(name = "diemthamquan")
public class DiemThamQuan implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenDiaDanh;
    private String diaChi;
    private String anh;
    
    
    @OneToMany(mappedBy = "diemThamQuan", fetch = FetchType.LAZY)//gắn với thuộc tính trong class bên kết nối
    private List<KhachSan> khachSans;
    
    @OneToMany(mappedBy = "diemThamQuan", fetch = FetchType.LAZY)//gắn với thuộc tính trong class bên kết nối
    private List<Tour> tours;

    
    
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
     * @return the tenDiaDanh
     */
    public String getTenDiaDanh() {
        return tenDiaDanh;
    }

    /**
     * @param tenDiaDanh the tenDiaDanh to set
     */
    public void setTenDiaDanh(String tenDiaDanh) {
        this.tenDiaDanh = tenDiaDanh;
    }


    /**
     * @return the khachSans
     */
    public List<KhachSan> getKhachSans() {
        return khachSans;
    }

    /**
     * @param khachSans the khachSans to set
     */
    public void setKhachSans(List<KhachSan> khachSans) {
        this.khachSans = khachSans;
    }

    /**
     * @return the tours
     */
    public List<Tour> getTours() {
        return tours;
    }

    /**
     * @param tours the tours to set
     */
    public void setTours(List<Tour> tours) {
        this.tours = tours;
    }

    /**
     * @return the diaChi
     */
    public String getDiaChi() {
        return diaChi;
    }

    /**
     * @param diaChi the diaChi to set
     */
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    /**
     * @return the anh
     */
    public String getAnh() {
        return anh;
    }

    /**
     * @param anh the anh to set
     */
    public void setAnh(String anh) {
        this.anh = anh;
    }
    
}
