/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.BinhLuan;
import com.dql.pojos.NguoiDung;
import com.dql.repository.BinhLuanRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
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
public class BinhLuanRepositoryImpl implements BinhLuanRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<BinhLuan> layBinhLuansTour(int tourId, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<BinhLuan> query = builder.createQuery(BinhLuan.class);
        Root root = query.from(BinhLuan.class);
        
        query = query.where(builder.equal(root.get("tour"), tourId));
        query = query.orderBy(builder.desc(root.get("id")));//sap xep
        
        Query q = session.createQuery(query);
        int maxPage = 5;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 5 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        
        return q.getResultList();
    }

    @Override
    public long slBinhLuan(int tourId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        Query query = session.createQuery("Select Count(*) From BinhLuan Where tour.id=:id");
        query.setParameter("id", tourId);
        
        return  Long.parseLong(query.getSingleResult().toString());
    }

    @Override
    public BinhLuan themBinhLuan(BinhLuan bl) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(bl);
            
            return bl;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
}
