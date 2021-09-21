/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Acer
 */
@RestController
public class AipTourController {
    
    @Autowired
    private TourService tourService;
    
    @DeleteMapping("/api/tours/{tourId}")
    @ResponseStatus(HttpStatus.OK)
    public void xoaTour(@PathVariable(name = "tourId") int tourId){
        this.tourService.xoaTour(tourId);
    }
}
