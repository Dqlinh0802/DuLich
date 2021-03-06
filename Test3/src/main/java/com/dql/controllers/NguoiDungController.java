/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.pojos.NguoiDung;
import com.dql.service.NguoiDungService;
import com.dql.validator.NguoiDungValidator;
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
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Acer
 */
@Controller
public class NguoiDungController {

    @Autowired
    private NguoiDungValidator nguoiDungValidator;

    @Autowired
    private NguoiDungService userDetailsService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(nguoiDungValidator);
    }

    @GetMapping("/dangNhap")
    public String dangNhap() {
        return "dangNhap";
    }

    @GetMapping("/dangKy")
    public String dangKyView(Model model,
            @RequestParam(name = "id", defaultValue = "0") int id) {
        if (id > 0) {
            model.addAttribute("nguoiDung", this.userDetailsService.layNguoiDungId(id));
        } else {
            model.addAttribute("nguoiDung", new NguoiDung());
        }
        return "dangKy";
    }

    @PostMapping("/dangKy")
    public String dangKy(Model model,
            @ModelAttribute(value = "nguoiDung") @Valid NguoiDung nguoiDung,
            BindingResult result) {
        
        String err = "";
        if (!result.hasErrors()) {
            if (this.userDetailsService.themSuaNguoiDung(nguoiDung) == true) {
                return "redirect:/dangNhap";
            } else {
                err = "???? c?? l???i x???y ra";
            }
        } else {
            err = "Error";
        }
        model.addAttribute("err", err);
        return "dangKy";

    }

}
