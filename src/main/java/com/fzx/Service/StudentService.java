package com.fzx.Service;

import com.fzx.Pojo.Student;

import java.util.List;

/*
 * @author 何唯恩
 * @version 1.0
 */public interface StudentService {
     int addStudent(Student student);
     List<Student> findStident();
}
