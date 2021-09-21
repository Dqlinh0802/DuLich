/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository;

import com.dql.pojos.Tour;
import java.util.List;

/**
 *
 * @author Acer
 */
public interface TourRepository {
    List<Tour> getTours(String kw, int page);
    Tour layTourId(int tourId);
    long slTour();
    boolean xoaTour(int tourId);
    boolean themHoacSua(Tour tour);
}
