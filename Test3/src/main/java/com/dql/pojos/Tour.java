/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.pojos;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Acer
 */
@Entity
@Table(name = "tour")
public class Tour implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")//****
    private int tourId;
    private String tenTour;
    private Date ngayBD;
    private Date ngayKT;
    private BigDecimal gia;
    private String anh;
    private String moTa;

    @Transient
    private MultipartFile file;

    //HDV
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
    //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idHDV")
    @JsonIgnore// k lay khi truyenlen Json
    private HuongDanVien huongDanVien;

    //DiemThamQuan
    @ManyToOne(fetch = FetchType.LAZY)//mac dinh la eager join vao lay het
    //lazy khi nao goi thi moi join 
    @JoinColumn(name = "idDiemThamQuan")
    @JsonIgnore// k lay khi truyenlen Json
    private DiemThamQuan diemThamQuan;


    //HoaDon
    @OneToMany(mappedBy = "tour")//gắn với thuộc tính trong class bên kết nối
    @JsonIgnore// k lay khi truyenlen Json
    private List<BinhLuan> binhLuans;

    
    //ChiTietHoaDon
    @OneToMany(mappedBy = "tour")//gắn với thuộc tính trong class bên kết nối
    @JsonIgnore// k lay khi truyenlen Json
    private List<ChiTietHoaDon> chiTietHoaDons;
   
    
    
    
    /**
     * @return the chiTietHoaDons
     */
    public List<ChiTietHoaDon> getChiTietHoaDons() {
        return chiTietHoaDons;
    }

    /**
     * @param chiTietHoaDons the chiTietHoaDons to set
     */
    public void setChiTietHoaDons(List<ChiTietHoaDon> chiTietHoaDons) {
        this.chiTietHoaDons = chiTietHoaDons;
    }

    /**
     * @return the moTa
     */
    public String getMoTa() {
        return moTa;
    }

    /**
     * @param moTa the moTa to set
     */
    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
    /**
     * @return the tourId
     */
    public int getTourId() {
        return tourId;
    }

    /**
     * @param tourId the tourId to set
     */
    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
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


    /**
     * @return the tenTour
     */
    public String getTenTour() {
        return tenTour;
    }

    /**
     * @param tenTour the tenTour to set
     */
    public void setTenTour(String tenTour) {
        this.tenTour = tenTour;
    }

    /**
     * @return the ngayBD
     */
    public Date getNgayBD() {
        return ngayBD;
    }

    /**
     * @param ngayBD the ngayBD to set
     */
    public void setNgayBD(Date ngayBD) {
        this.ngayBD = ngayBD;
    }

    /**
     * @return the ngayKT
     */
    public Date getNgayKT() {
        return ngayKT;
    }

    /**
     * @param ngayKT the ngayKT to set
     */
    public void setNgayKT(Date ngayKT) {
        this.ngayKT = ngayKT;
    }

    /**
     * @return the gia
     */
    public BigDecimal getGia() {
        return gia;
    }

    /**
     * @param gia the gia to set
     */
    public void setGia(BigDecimal gia) {
        this.gia = gia;
    }

    /**
     * @return the huongDanVien
     */
    public HuongDanVien getHuongDanVien() {
        return huongDanVien;
    }

    /**
     * @param huongDanVien the huongDanVien to set
     */
    public void setHuongDanVien(HuongDanVien huongDanVien) {
        this.huongDanVien = huongDanVien;
    }

    /**
     * @return the binhLuans
     */
    public List<BinhLuan> getBinhLuans() {
        return binhLuans;
    }

    /**
     * @param binhLuans the binhLuans to set
     */
    public void setBinhLuans(List<BinhLuan> binhLuans) {
        this.binhLuans = binhLuans;
    }

}
