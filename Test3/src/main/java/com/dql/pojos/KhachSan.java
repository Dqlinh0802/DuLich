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
@Table(name = "khachsan")
public class KhachSan implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenKhachSan;
    private String diaChi;
    
    //DiemThamQuan
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idDiemThamQuan")
    private DiemThamQuan diemThamQuan;

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
     * @return the tenKhachSan
     */
    public String getTenKhachSan() {
        return tenKhachSan;
    }

    /**
     * @param tenKhachSan the tenKhachSan to set
     */
    public void setTenKhachSan(String tenKhachSan) {
        this.tenKhachSan = tenKhachSan;
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
     * @return the diemThamQuan
     */
    public DiemThamQuan getDiemThamQuan() {
        return diemThamQuan;
    }

    /**
     * @param diemThamQuan the diemThamQuan to set
     */
    public void setDiemThamQuan(DiemThamQuan diemThamQuan) {
        this.diemThamQuan = diemThamQuan;
    }
    
    
}
