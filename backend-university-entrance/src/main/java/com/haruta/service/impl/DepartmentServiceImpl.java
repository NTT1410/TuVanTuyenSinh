/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.haruta.service.impl;

import com.haruta.pojo.Departments;
import com.haruta.repository.DepartmentRepository;
import com.haruta.service.DepartmentService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nguye
 */
@Service
public class DepartmentServiceImpl implements DepartmentService{
    @Autowired
    private DepartmentRepository dpmRepo;

    @Override
    public List<Departments> getDpm(Map<String, String> params) {
        return this.dpmRepo.getDpm(params);
    }
}
