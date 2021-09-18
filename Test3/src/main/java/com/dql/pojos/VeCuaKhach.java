/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.pojos;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Acer
 */
@Entity
@Table(name = "vecuakhach")
public class VeCuaKhach  implements Serializable{
    
    @Id
    //nhieu nguoidung
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idNguoiDung")
    private NguoiDung nguoiDung;
    
    @Id
    //nhieu ve
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
                                      //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idVe")
    private Ve ve;

        
    
    /**
     * @return the nguoiDung
     */
    public NguoiDung getNguoiDung() {
        return nguoiDung;
    }

    /**
     * @param nguoiDung the nguoiDung to set
     */
    public void setNguoiDung(NguoiDung nguoiDung) {
        this.nguoiDung = nguoiDung;
    }

    /**
     * @return the ve
     */
    public Ve getVe() {
        return ve;
    }

    /**
     * @param ve the ve to set
     */
    public void setVe(Ve ve) {
        this.ve = ve;
    }
    
    
    
}
