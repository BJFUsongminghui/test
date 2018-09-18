package com.fenliu.service;

import com.fenliu.dao.ChangPasswordDao;
import com.fenliu.domain.Student;

public class ChangPasswordService {

	public Student change(String username, String newpassword) {
		// TODO Auto-generated method stub
		ChangPasswordDao changpassword=new ChangPasswordDao();
		return changpassword.chang(username,newpassword);
	}

}
