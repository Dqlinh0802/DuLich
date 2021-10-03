/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.controllers;

import com.dql.pojos.BinhLuan;
import com.dql.service.BinhLuanService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Acer
 */
@RestController
public class ApiBinhLuanController {

    @Autowired
    private BinhLuanService binhLuanService;

    @PostMapping(path = "/api/themBinhLuan", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BinhLuan> themBinhLuan(@RequestBody Map<String, String> params) {
        try {
            String noiDung = params.get("noiDung");
            int tourId = Integer.parseInt(params.get("tourId"));

            BinhLuan b = this.binhLuanService.themBinhLuan(noiDung, tourId);

            return new ResponseEntity<>(b, HttpStatus.CREATED);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
