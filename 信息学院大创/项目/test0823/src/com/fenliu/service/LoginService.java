package com.fenliu.service;

import com.fenliu.dao.LoginDao;
import com.fenliu.domain.Student;

public class LoginService {

	public Student login(String username, String password) {
		// TODO Auto-generated method stub
		LoginDao loginDao=new LoginDao();
		return loginDao.login(username, password);
	}
	
}
