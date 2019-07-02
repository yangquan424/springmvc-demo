package com.cheer.springmvc.web.controller;


import com.cheer.spring.mybatis.model.Emp;
import com.cheer.spring.mybatis.model.Users;
import com.cheer.spring.mybatis.servcie.EmpService;

import com.cheer.spring.mybatis.servcie.UsersServce;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;


@Controller //标识当前类是一个rest风格的配适器
public class UserController {

    @Autowired
    private EmpService empService;
    @Autowired
    private UsersServce usersServce;

    @GetMapping("login")
    public String Login() {
        return "login";
    }

    @PostMapping("login")
    public String login(@RequestParam(value = "username") String name, @RequestParam(value = "psaaword") String pass,
                        HttpSession session) {
        Users users = this.usersServce.getList(name);
        if (users != null) {
            if (name.equals(users.getUsername()) && pass.equals(users.getPassword())) {
                return "redirect:/empList";
            }
        }
        return "redirect:/login";
    }

    @GetMapping("empList")
    public String empList(Model model) {
        model.addAttribute("empList", this.empService.getlist());
        return "empList";
    }

    @GetMapping("register")
    public String register() {
        return "register";
    }

    @PostMapping("register")
    public String register(Users users) throws Exception {
        Users users1 = this.usersServce.getList(users.getUsername());
        if (users1 == null) {
            this.usersServce.register(users);
        }
        return "redirect:/login";
    }

    @GetMapping("delete")
    public String delete(@RequestParam String empno) {
        this.empService.doDelete(Integer.valueOf(empno));
        return "redirect:/empList";
    }

    @GetMapping("update")
    public String update(@RequestParam String empno, Model model) {
        model.addAttribute("emp", this.empService.getEmp(Integer.valueOf(empno)));
        return "update";
    }

    @PostMapping("update")
    public String update(Emp emp) throws Exception {
        this.empService.update(emp);
        return "redirect:/empList";
    }

    @GetMapping("insert")
    public String insert() {
        return "insert";
    }

    @PostMapping("insert")
    public String insert(Emp emp) throws Exception {
        this.empService.insert(emp);
        return "redirect:/empList";
    }

    @GetMapping("springUpload")
    public String springUpload() {
        return "xxx";
    }

    @RequestMapping(value = "springUpload", method = RequestMethod.POST)
    public String fileUpload(MultipartFile file, HttpSession session) throws IOException {
        //      String basePath = request.getSession().getServletContext().getRealPath("upload");
        //如果这样写，路径中会带有盘符D:*****，保存到数据库时应该保存为相对地址，所以不应该这样写

        //设置保存文件的位置
        String basePath = "../data/";
        String fileName = file.getOriginalFilename();//获取上传文件名称
        //获取文件格式
        String fileType = fileName.substring(fileName.indexOf(".") + 1);
        String path = basePath+"13."+fileType;
        FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));//写入到头像文件夹中
        session.setAttribute("path",path);
        return "redirect:/springUpload";
    }
}
