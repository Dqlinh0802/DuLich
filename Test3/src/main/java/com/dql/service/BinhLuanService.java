/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service;

import com.dql.pojos.BinhLuan;
import java.util.List;

/**
 *
 * @author Acer
 */
public interface BinhLuanService {
    List<BinhLuan> layBinhLuansTour(int tourId, int page);
    long slBinhLuan(int tourId);
    BinhLuan themBinhLuan(String noiDung, int tourId);
}
