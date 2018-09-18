package com.fenliu.service;

import com.fenliu.dao.SaveBeginTimeDao;

public class SaveBeginTime{

	public void save(String begintime) {
		// TODO Auto-generated method stub
		SaveBeginTimeDao beginTime=new SaveBeginTimeDao();
		beginTime.save(begintime);
		
	}

	

}
