package com.fzx.Dao;

import com.fzx.Pojo.Student;
import org.springframework.stereotype.Component;

import java.util.List;

/*
 * @author 何唯恩
 * @version 1.0
 */
public interface studentDao {
     int insertStudent(Student student);
     List<Student> selectAll();
}
