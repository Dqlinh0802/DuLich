/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service;

import com.dql.pojos.Tour;
import java.util.List;

/**
 *
 * @author Acer
 */
public interface TourService {
    List<Tour> getTours(String kw, int page);
    Tour layTourId(int tourId);
    long slTour();
    boolean themHoacSua(Tour tour);
}
