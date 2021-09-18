/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.utils;

import com.dql.pojos.GioHang;
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
}
