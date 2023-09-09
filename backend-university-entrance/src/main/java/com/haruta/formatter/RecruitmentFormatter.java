/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.haruta.formatter;

import com.haruta.pojo.Recruitment;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author nguye
 */
public class RecruitmentFormatter implements Formatter<Recruitment> {

    @Override
    public String print(Recruitment r, Locale locale) {
        return String.valueOf(r.getId());
    }

    @Override
    public Recruitment parse(String rId, Locale locale) throws ParseException {
        int id = Integer.parseInt(rId);
        return new Recruitment(id);
    }

}
