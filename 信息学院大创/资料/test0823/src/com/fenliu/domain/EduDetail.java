package com.fenliu.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EduDetail {

	Date beginTime=new Date();
	Date endTime=new Date();
	public EduDetail(){
		SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		try {
			beginTime =dateFormat.parse("2018-09-02 09:00:00");
			endTime =dateFormat.parse("2018-09-02 11:00:00");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
