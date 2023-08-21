/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.haruta.repository.impl;

import com.haruta.pojo.Departments;
import com.haruta.repository.DepartmentRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
 * @author nguye
 */
@Repository
@Transactional
public class DepartmentRepositoryImpl implements DepartmentRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Override
    public List<Departments> getDpm(Map<String, String> params) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery<Departments> d = builder.createQuery(Departments.class);
        Root root = d.from(Departments.class);
        d.select(root);
        
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();

            String departmentid = params.get("departmentid");
            if (departmentid != null && !departmentid.isEmpty()) {
                predicates.add(builder.equal(root.get("id"), Integer.parseInt(departmentid)));
            }

            String departmentname = params.get("departmentname");
            if (departmentname != null && !departmentname.isEmpty()) {
                predicates.add(builder.like(root.get("name"), String.format("%%%s%%", departmentname)));
            }

            d.where(predicates.toArray(Predicate[]::new));

        }
        d.orderBy(builder.asc(root.get("id")));
        Query query = s.createQuery(d);
        return query.getResultList();
    }
}