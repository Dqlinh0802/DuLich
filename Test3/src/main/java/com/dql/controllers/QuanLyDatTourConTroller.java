/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.service.NguoiDatTourService;
import com.dql.service.ThongKeService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Acer
 */
@Controller
public class QuanLyDatTourConTroller {
    
    @Autowired
    private NguoiDatTourService nguoiDatTourService;
    
    @GetMapping("/nhanVien/xemNguoiDangKyTour")
    public String thongKeDoanhThuTour(Model model,
            @RequestParam(required = false) Map<String, String> params){
        
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        
        String tenTour = params.getOrDefault("tenTour", null);
        
        model.addAttribute("nguoiDatTour", this.nguoiDatTourService.dsTourDuocDat(tenTour, page));
        model.addAttribute("slTourDuocDat", this.nguoiDatTourService.slTourDuocDat());
        
        return "xemNguoiDangKyTour";
    }
    
    
    
    
}
