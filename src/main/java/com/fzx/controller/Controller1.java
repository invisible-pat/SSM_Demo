package com.fzx.controller;

import com.fzx.Pojo.Student;
import com.fzx.Service.StudentService;
import com.fzx.Service.StudentServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/*
 * @author 何唯恩
 * @version 1.0
 */
@Controller
public class Controller1 {

    @Resource
    private StudentService studentService;

    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){

        ModelAndView mv = new ModelAndView();
        String meg = "注册成功！！！";
        int rows = studentService.addStudent(student);
        System.out.println(rows);
        if(rows > 0){
            mv.addObject("msg",meg);
            mv.setViewName("result");
        }else{
            meg = "注册失败";
            mv.addObject("msg",meg);
            mv.setViewName("result");
        }

        return mv;

    }
//    相应ajax,输出数据
    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> students = studentService.findStident();
        return students;
    }
}
