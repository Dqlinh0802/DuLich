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
@Table(name = "tourdiphuongtien")
public class TourDiPhuongTien implements Serializable{

    
    @Id
    //nhieu ve
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idTour")
    private Tour tour;
    
    @Id
    //nhieu nguoidung
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idPhuongTien")
    private PhuongTien phuongTien;
    
    
    
    
    /**
     * @return the phuongTien
     */
    public PhuongTien getPhuongTien() {
        return phuongTien;
    }

    /**
     * @param phuongTien the phuongTien to set
     */
    public void setPhuongTien(PhuongTien phuongTien) {
        this.phuongTien = phuongTien;
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
    
}
