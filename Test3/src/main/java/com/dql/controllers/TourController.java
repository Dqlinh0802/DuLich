/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.pojos.Tour;
import com.dql.service.TourService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Acer
 */
@Controller
public class TourController {
    @Autowired
    private TourService tourService;
//    @Autowired
//    private WebAppValidator webAppValidator;
//    
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(webAppValidator);
//    }
    
    //Map dung để hứng tên của hình trên clou
    //lấy String img để lưu tên
    //@Valid chi khi past het thi Tour moi duoc nhan
    //het vi pham moi cho lam BindingResult bao vi pham vao day het
    
    @PostMapping("/admin/tours")
    public String post(Model model,
            @ModelAttribute(value = "tour") @Valid Tour tour, 
            BindingResult result){
        
        
        if(!result.hasErrors()){
            if(this.tourService.themHoacSua(tour) == true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Có lỗi rồi!!!");
        }
        //neu that bai thi no dung o tour
        return "tour";
    }
    
    
    
    //phan quyen cho admin
    @GetMapping("/admin/tours")
    public String danhSach(Model model) {
        model.addAttribute("tour", new Tour());
        return "tour";
    }
    
    @GetMapping("/tours/{tourId}")
    public String chiTietTour(Model model,
        @PathVariable (value = "tourId") int tourId){
        
        model.addAttribute("tour", this.tourService.layTourId(tourId));
        return "chiTietTour";
    }
    
}
