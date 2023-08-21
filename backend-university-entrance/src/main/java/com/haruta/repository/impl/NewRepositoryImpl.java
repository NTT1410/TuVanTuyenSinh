/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.haruta.repository.impl;

import com.haruta.pojo.News;
import com.haruta.repository.NewRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nguye
 */
@Repository
@Transactional
public class NewRepositoryImpl implements NewRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Override
    public List<News> getNews() {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery<News> n = builder.createQuery(News.class);
        Root root = n.from(News.class);
        
        n.select(root);
        
        n.orderBy(builder.desc(root.get("createdDate")), builder.desc(root.get("updatedDate")));
        
        Query query = s.createQuery(n);
        return query.getResultList();
    }
}