/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository;

import com.dql.pojos.NguoiDung;
import java.util.List;

/**
 *
 * @author Acer
 */
public interface NguoiDungRepository {
    boolean themNguoiDung(NguoiDung nguoiDung);
    List<NguoiDung> danhSachNguoiDung(String taiKhoan);
    NguoiDung layNguoiDungId(int nguoiDungId);
    List<NguoiDung> dsNguoiDung(String taiKhoan, int page);
    long slNguoiDung();
}
