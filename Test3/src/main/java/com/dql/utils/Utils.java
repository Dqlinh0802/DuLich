/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.utils;

import com.dql.pojos.GioHang;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Acer
 */
public class Utils {
    public static int demSLTour(Map<Integer, GioHang> gioHang){
        int dem = 0;
        if(gioHang != null){
            for(GioHang g: gioHang.values())
                dem += g.getSoLuong();
        }
        return dem;
    }
    public static Map<String, String> tinhTien(Map<Integer, GioHang> gioHang){
        BigDecimal tong = BigDecimal.ZERO;
        int dem = 0;
        
        if(gioHang != null){
            for(GioHang g: gioHang.values()){
                
                dem += g.getSoLuong();
                tong = tong.add(g.getGia().multiply(BigDecimal.valueOf(g.getSoLuong())));
                
            }
        }
        Map<String, String> kq = new HashMap<>();
        kq.put("tongTien", String.valueOf(tong));
        kq.put("slTour", String.valueOf(dem));
        
        return kq;
    }
}
