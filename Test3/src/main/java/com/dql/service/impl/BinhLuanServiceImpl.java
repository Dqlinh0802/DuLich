/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service.impl;

import com.dql.pojos.BinhLuan;
import com.dql.pojos.NguoiDung;
import com.dql.pojos.Tour;
import com.dql.repository.BinhLuanRepository;
import com.dql.repository.NguoiDungRepository;
import com.dql.repository.TourRepository;
import com.dql.service.BinhLuanService;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Acer
 */
@Service
public class BinhLuanServiceImpl implements BinhLuanService{
    @Autowired
    private BinhLuanRepository binhLuanRepository;
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private NguoiDungRepository nguoiDungRepository;
    
    @Override
    public List<BinhLuan> layBinhLuansTour(int tourId, int page) {
        return this.binhLuanRepository.layBinhLuansTour(tourId, page);
    }

    @Override
    public long slBinhLuan(int tourId) {
        return this.binhLuanRepository.slBinhLuan(tourId);
    }

    @Override
    public BinhLuan themBinhLuan(String noiDung, int tourId) {
        Tour t = this.tourRepository.layTourId(tourId);
        NguoiDung n = this.nguoiDungRepository.layNguoiDungId(8);
    
        BinhLuan b = new BinhLuan();
        if(noiDung == "" || noiDung == null)
            b.setNoiDung(".");
        else
            b.setNoiDung(noiDung);
        b.setNguoiDung(n);
        b.setTour(t);
        
        b.setNgayBL(new Date());
            
        return this.binhLuanRepository.themBinhLuan(b);
    }
    
}
