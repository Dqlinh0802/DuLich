/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Acer
 */
@Controller
public class QuanLyDatTourConTroller {
    
    @GetMapping("/nhanVien/xemNguoiDangKyTour")
    public String thongKeDoanhThuTour(Model model){
        
        return "xemNguoiDangKyTour";
    }
    
}
