/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.pojos.GioHang;
import com.dql.service.NguoiDungService;
import com.dql.service.TourService;
import com.dql.utils.Utils;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Acer
 */
@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private TourService tourService;
    
    
    @RequestMapping("/")
    public String index(Model model) {

        return "index";
    }
    @RequestMapping("/dsTour")
    public String dsTour(Model model,
            @RequestParam(required = false) Map<String , String> params) {
        
        
        //co thì lấy k có thì lấy 1
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("tours", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("slTour", this.tourService.slTour());
        
        return "dsTour";
    }
    
    //dung chung
    //phai ep kieu 
    @ModelAttribute
    public void dungChung(Model model, HttpSession session){
        model.addAttribute("demSLTour", Utils.demSLTour((Map<Integer, GioHang>) session.getAttribute("gioHang")));
        model.addAttribute("nguoiDungDangNhap", session.getAttribute("nguoiDungDangNhap"));
    }
    
   
    
}
