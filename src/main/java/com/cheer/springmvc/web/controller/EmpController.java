package com.cheer.springmvc.web.controller;

import com.cheer.spring.mybatis.model.Emp;
import com.cheer.spring.mybatis.servcie.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController // 标识当前类是一个rest风格的控制器
public class EmpController {
    @Autowired
    private EmpService empService;
    @GetMapping("/getEmpList") // 标识当前方法可以接受一个http的get方法请求
    public List<Emp> getEmpList() {
        List<Emp> empList = this.empService.getlist();
        return empList;
    }
}
