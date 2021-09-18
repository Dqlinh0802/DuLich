/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.pojos;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Acer
 */
@Entity
@Table(name = "dangky")
public class DangKy implements Serializable{
    private int soLuong;
    
    
    
    
    @Id
    //nhieu nguoidung
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idNguoiDung")
    private NguoiDung nguoiDungDK;
    
    
    
    
    @Id
    //nhieu ve
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idTour")
    private Tour tour;

    
    
    
    
    /**
     * @return the soLuong
     */
    public int getSoLuong() {
        return soLuong;
    }

    /**
     * @param soLuong the soLuong to set
     */
    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
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
     * @return the nguoiDungDK
     */
    public NguoiDung getNguoiDungDK() {
        return nguoiDungDK;
    }

    /**
     * @param nguoiDungDK the nguoiDungDK to set
     */
    public void setNguoiDungDK(NguoiDung nguoiDungDK) {
        this.nguoiDungDK = nguoiDungDK;
    }
}
