package com.fenliu.service;

import com.fenliu.dao.TeacherLoginDao;
import com.fenliu.domain.Teacher;

public class TeacherLoginService {

	public Teacher login(String username, String password) {
		TeacherLoginDao teacherlogin=new TeacherLoginDao();
		return teacherlogin.login(username,password);
	}

}
