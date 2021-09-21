/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dql.pojos.Tour;
import com.dql.repository.TourRepository;
import com.dql.service.TourService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Acer
 */
@Service
public class TourServiceImpl implements TourService{
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Tour> getTours(String kw, int page) {
    
        return this.tourRepository.getTours(kw, page);
    }

    @Override
    public long slTour() {
        return this.tourRepository.slTour();
    }

    @Override
    public boolean themHoacSua(Tour tour) {
        try {
            Map m = this.cloudinary.uploader().upload(tour.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            
            tour.setAnh((String) m.get("secure_url"));
            
            
            return this.tourRepository.themHoacSua(tour);
        } catch (IOException ex) {
            System.err.println("Upload file fail!!!");
        }
        
        return false;
    }

    @Override
    public Tour layTourId(int tourId) {
        return this.tourRepository.layTourId(tourId);
    }

    @Override
    public boolean xoaTour(int tourId) {
        return this.tourRepository.xoaTour(tourId);
    }
    
    
}



