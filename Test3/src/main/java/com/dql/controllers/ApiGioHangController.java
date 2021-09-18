/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.pojos.GioHang;
import com.dql.pojos.Tour;
import com.dql.service.TourService;
import com.dql.utils.Utils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Acer
 */
@RestController
public class ApiGioHangController {
    
    @Autowired
    private TourService tourService;
    
    @GetMapping("/api/tours")
    public ResponseEntity<List<Tour>> dsTours(){
        List<Tour> tours = this.tourService.getTours("", 1);
        
        return new ResponseEntity<>(tours, HttpStatus.OK);
    }
    
    //phien lam viec, no khac truy van hibernate
    @GetMapping("/api/gioHang/{tourId}")
    public ResponseEntity<Integer> gioHang(@PathVariable(value = "tourId") Integer tourId,
            HttpSession session){
        Map<Integer, GioHang> gioHang = (Map<Integer, GioHang>) session.getAttribute("gioHang");
        //neu chua co gio hang thi tao mới
        if(gioHang == null)
            gioHang = new HashMap<>();
        
        
        if(gioHang.containsKey(tourId) == true){
            //neu co tour trong gio thi
            GioHang g = gioHang.get(tourId);
            g.setSoLuong(g.getSoLuong() + 1);
        } else {
            //neu k co tour trong gio thi 
            
            Tour t = this.tourService.layTourId(tourId);
            
            GioHang c = new GioHang();
            c.setTourId(t.getTourId());
            c.setTenTour(t.getTenTour());
            c.setGia(t.getGia());
            c.setSoLuong(1);
            
            gioHang.put(tourId, c);
        }
        
        session.setAttribute("gioHang", gioHang);
        Utils.demSLTour(gioHang);
        return new ResponseEntity<>(Utils.demSLTour(gioHang), HttpStatus.OK);
        
    }
}
