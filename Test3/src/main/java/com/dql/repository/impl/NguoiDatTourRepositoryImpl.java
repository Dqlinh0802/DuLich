/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.ChiTietHoaDon;
import com.dql.pojos.HoaDon;
import com.dql.pojos.NguoiDung;
import com.dql.pojos.Tour;
import com.dql.repository.NguoiDatTourRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class NguoiDatTourRepositoryImpl implements NguoiDatTourRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Object[]> dsTourDuocDat(String tenTour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
         
        Root rootT = query.from(Tour.class);
        Root rootH = query.from(HoaDon.class);
        Root rootC = query.from(ChiTietHoaDon.class);
        Root rootN = query.from(NguoiDung.class);
        
        List<Predicate> predicates = new ArrayList<>();
        
        if (tenTour != null && tenTour.trim().isEmpty()) {
            predicates.add(builder.like(rootT.get("tenTour"), String.format("%%%s%%", tenTour)));
        }
        query.multiselect(rootT.get("tourId"), rootT.get("tenTour"));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }
    
}
