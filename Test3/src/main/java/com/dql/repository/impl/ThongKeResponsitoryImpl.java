/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.repository.impl;

import com.dql.pojos.ChiTietHoaDon;
import com.dql.pojos.HoaDon;
import com.dql.pojos.Tour;
import com.dql.repository.ThongKeRepository;
import java.util.ArrayList;
import java.util.Date;
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
public class ThongKeResponsitoryImpl implements ThongKeRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> doanhThuTheoTour(Date ngayBD, Date ngayKT) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);

        Root rootT = query.from(Tour.class);
        Root rootH = query.from(HoaDon.class);
        Root rootC = query.from(ChiTietHoaDon.class);

        
//        vi nhieu dieu kien ket nen dung List<Predicate>
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootC.get("tour"), rootT.get("tourId")));
        predicates.add(builder.equal(rootC.get("hoaDon"), rootH.get("id")));

//        dung prod để sum
        query.multiselect(rootT.get("tourId"), rootT.get("tenTour"),
                builder.sum(builder.prod(rootC.get("soLuong"), rootC.get("gia")))); 
        
//        if (tenTour != null && tenTour.trim().isEmpty()) {
//            predicates.add(builder.like(rootT.get("tenTour"), String.format("%%%s%%", tenTour)));
//        }
        
        if (ngayBD != null) {
            predicates.add(builder.greaterThanOrEqualTo(rootH.get("ngayMua"), ngayBD));
        }
        
        if (ngayKT != null) {
            predicates.add(builder.lessThanOrEqualTo(rootH.get("ngayMua"), ngayKT));
        }
        
//        ket xong thi group lai theo tung thang
        query = query.where(predicates.toArray(new Predicate[] {}));
        query = query.groupBy(rootT.get("tourId"));
        query = query.orderBy(builder.asc(rootT.get("tourId")));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

}
