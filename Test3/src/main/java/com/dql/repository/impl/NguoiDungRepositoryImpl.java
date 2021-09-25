/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.NguoiDung;
import com.dql.pojos.Tour;
import com.dql.repository.NguoiDungRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Acer
 */
@Repository
@Transactional
public class NguoiDungRepositoryImpl implements NguoiDungRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    

    
    @Override
    public boolean themNguoiDung(NguoiDung nguoiDung) {
        Session session = sessionFactory.getObject().getCurrentSession();
        
        try{
            session.save(nguoiDung);
            
            return true;
        } catch (Exception ex){
            System.err.println("Error " + ex.getMessage());
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    public List<NguoiDung> danhSachNguoiDung(String taiKhoan) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<NguoiDung> query = builder.createQuery(NguoiDung.class);
        Root root = query.from(NguoiDung.class);
        query = query.select(root);
        
        if(!taiKhoan.isEmpty()){
            Predicate p = builder.equal(root.get("taiKhoan").as(String.class), taiKhoan.trim());
            
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public NguoiDung layNguoiDungId(int nguoiDungId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(NguoiDung.class, nguoiDungId);
    }

    @Override
    public List<NguoiDung> dsNguoiDung(String taiKhoan, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();  
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<NguoiDung> query = builder.createQuery(NguoiDung.class);
        Root root = query.from(NguoiDung.class);
        query = query.select(root);
        
        
        //%% -> chuyen thanh 1 dau khi xuong duoi
        if(taiKhoan != null){
            Predicate p = builder.like(root.get("taiKhoan").as(String.class),
                    String.format("%%%s%%", taiKhoan));
            query = query.where(p);
        }
        
        Query q = session.createQuery(query); 
        int maxPage = 6;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 6 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        
        return q.getResultList();
    }

}
