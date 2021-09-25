/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.ChiTietHoaDon;
import com.dql.pojos.GioHang;
import com.dql.pojos.HoaDon;
import com.dql.repository.HoaDonRepository;
import com.dql.repository.NguoiDungRepository;
import com.dql.repository.TourRepository;
import com.dql.utils.Utils;
import java.math.BigDecimal;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Acer
 */
@Repository
public class HoaDonRepositoryImpl implements HoaDonRepository {

    @Autowired
    private NguoiDungRepository nguoiDungRepository;
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private TourRepository tourRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)//do cap nhat nhieu giao tac
    public boolean themHoaDon(Map<Integer, GioHang> gioHang) {
        try {
            Session session = sessionFactory.getObject().getCurrentSession();

            HoaDon hoaDon = new HoaDon();
            hoaDon.setNguoiDung(this.nguoiDungRepository.layNguoiDungId(6));
//            hoaDon.setNgayMua("");// lay ngay hien tai

            Map<String, String> tinhTien = Utils.tinhTien(gioHang);
            hoaDon.setTongTien(BigDecimal.valueOf(Long.parseLong(tinhTien.get("tongTien"))));

            session.save(hoaDon);

            for (GioHang g: gioHang.values()) {
                ChiTietHoaDon c = new ChiTietHoaDon();
                c.setGia(g.getGia());
                c.setSoLuong(g.getSoLuong());
                c.setHoaDon(hoaDon);
                c.setTour(this.tourRepository.layTourId(g.getTourId()));

                session.save(c);
            }
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return false;
    }

}