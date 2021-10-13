/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.Tour;
import com.dql.repository.TourRepository;
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
public class TourRepositoryImpl implements TourRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Tour> getTours(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();  
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        
        Root root = query.from(Tour.class);
        query = query.select(root);

        
        //%% -> chuyen thanh 1 dau khi xuong duoi
        if(kw != null){
            Predicate p = builder.like(root.get("tenTour").as(String.class),
                    String.format("%%%s%%", kw));
            query = query.where(p);
        }
        
        Query q = session.createQuery(query); 
        int maxPage = 18;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 18 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        
        return q.getResultList();
    }
    

    

    @Override
    public boolean themHoacSua(Tour tour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        try{
            if(tour.getTourId() > 0)
                session.update(tour);
            else
                session.save(tour);
            return true;
        } catch (Exception ex){
            System.err.println("Lỗi xảy ra khi thêm hoặc sửa" + ex.getMessage());
            //in ra cac buoc toi dau bi loi
            ex.printStackTrace();
        }
        return false;
        
    }

    @Override
    public Tour layTourId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Tour.class, id);
    }

    @Override
    public boolean xoaTour(int tourId) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            Tour t = session.get(Tour.class, tourId);
            session.delete(t);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    @Override
    public long slTour() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Tour");
        return Long.parseLong(q.getSingleResult().toString());
    }


}
