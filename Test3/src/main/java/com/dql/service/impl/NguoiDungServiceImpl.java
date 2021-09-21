/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dql.pojos.NguoiDung;
import com.dql.repository.NguoiDungRepository;
import com.dql.service.NguoiDungService;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author Acer
 */
@Service("userDetailsService")
public class NguoiDungServiceImpl implements NguoiDungService{ 

    @Autowired
    private NguoiDungRepository nguoiDungRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private Cloudinary cloudinary;
    
    
    //xu ly băm password
    @Override
    public boolean themNguoiDung(NguoiDung nguoiDung) {
        
        String pass = nguoiDung.getMatKhau();
        nguoiDung.setMatKhau(this.passwordEncoder.encode(pass));
        
        nguoiDung.setVaiTro(NguoiDung.USER);
        try{
            Map m = this.cloudinary.uploader().upload(nguoiDung.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            
                nguoiDung.setAnh((String) m.get("secure_url"));
                return this.nguoiDungRepository.themNguoiDung(nguoiDung);
        } catch (IOException ex) {
            System.err.println("Đã xảy ra lỗi!!!");
        }
        
        return false;
    }
//@Override
//    public boolean themHoacSua(Tour tour) {
//        try {
//            Map m = this.cloudinary.uploader().upload(tour.getFile().getBytes(),
//                    ObjectUtils.asMap("resource_type", "auto"));
//            
//            tour.setAnh((String) m.get("secure_url"));
//            
//            
//            return this.tourRepository.themHoacSua(tour);
//        } catch (IOException ex) {
//            System.err.println("Upload file fail!!!");
//        }
//        
//        return false;
//    }

    
    @Override
    public List<NguoiDung> danhSachNguoiDung(String ten) {
        return this.nguoiDungRepository.danhSachNguoiDung(ten);
    }

    //tra ra userDetailsService
    @Override
    public UserDetails loadUserByUsername(String ten) throws UsernameNotFoundException {
        List<NguoiDung> ds = this.danhSachNguoiDung(ten);
        if(ds.isEmpty())
            throw new UsernameNotFoundException("Không tồn tại");
        
         
        //chi co 1 thang user thoi vi ss equal ma'
        NguoiDung nguoiDung = ds.get(0);
        
        Set<GrantedAuthority> auth = new HashSet<>();
        auth.add(new SimpleGrantedAuthority(nguoiDung.getVaiTro()));
        
        
        return new org.springframework.security.core.userdetails.User(
                nguoiDung.getTaiKhoan(), nguoiDung.getMatKhau(), auth);
    }


    
}
