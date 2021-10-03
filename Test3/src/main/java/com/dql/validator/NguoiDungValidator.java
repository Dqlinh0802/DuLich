/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.validator;

import com.dql.pojos.NguoiDung;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Acer
 */
@Component
public class NguoiDungValidator implements Validator{

    @Override
    public boolean supports(Class<?> type) {
        return NguoiDung.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        NguoiDung n = (NguoiDung) o;
        //rejectValue name nó biet truong nào bị lỗi
//        if(n.getTen() == "" || n.getTen() == null)
//            errors.rejectValue("ten", "nguoidung.errNull");
        
//        if(n.getAnh() == "" || n.getAnh() == null)
//            errors.rejectValue("anh", "nguoidung.errNull");
//        if(n.getHo() == "" || n.getHo() == null)
//            errors.rejectValue("ho", "nguoidung.errNull");
//        if(n.getEmail()== "" || n.getEmail() == null)
//            errors.rejectValue("email", "nguoidung.errNull");
//        if(n.getDiaChi()== "" || n.getDiaChi() == null)
//            errors.rejectValue("diaChi", "nguoidung.errNull");
//        if(n.getSdt() == "" || n.getSdt() == null)
//            errors.rejectValue("sdt", "nguoidung.errNull");
//        if(n.getTaiKhoan()== "" || n.getTaiKhoan() == null)
//            errors.rejectValue("taiKhoan", "nguoidung.errNull");
        if (!n.getMatKhau().equals(n.getXacThucMatKhau()))
            errors.rejectValue("xacThucMatKhau", "nguoidung.errMatKhau");
    }
    
}
