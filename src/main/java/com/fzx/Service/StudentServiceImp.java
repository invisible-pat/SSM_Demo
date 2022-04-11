package com.fzx.Service;

import com.fzx.Dao.studentDao;
import com.fzx.Pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/*
 * @author 何唯恩
 * @version 1.0
 */
@Service
public class StudentServiceImp implements StudentService{

    @Autowired
    private studentDao dao;
    @Override
    public int addStudent(Student student) {
        return dao.insertStudent(student);
    }

    @Override
    public List<Student> findStident() {
        return dao.selectAll();
    }
}
