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
        if(n.getTaiKhoan()== "" || n.getTaiKhoan() == null)
            errors.rejectValue("taiKhoan", "nguoidung.errNull");

        if (!n.getMatKhau().equals(n.getXacThucMatKhau()))
            errors.rejectValue("xacThucMatKhau", "nguoidung.errMatKhau");
    }
    
}
