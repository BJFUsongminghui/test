package com.fenliu.utils;


import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.fenliu.dao.GetBeginTimeDao;

public class TimeUtil {
    public static int flag=0;
    
    /*
     * 获取当前网络时间
     */
    public static int gettimeFlag(){
    	  try { 
    		 
    	      String webUrl1="http://www.baidu.com";//百度时间
              URL url=new URL(webUrl1);
              URLConnection conn=url.openConnection();
              conn.connect();
              long dateL=conn.getDate();
              Date date=new Date(dateL);
              SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY/MM/dd HH:mm");
              Calendar calendar = Calendar.getInstance();
              GetBeginTimeDao begintime=new GetBeginTimeDao();
              String s=begintime.getBeginTime();
              System.out.println("从数据库获取的"+s);
      			calendar.setTime(dateFormat.parse(s));
      			//现在时间
      			String s1=dateFormat.format(calendar.getTime());
      			calendar.add(Calendar.MINUTE, 60);// 60分钟后的时间
      			String s2=dateFormat.format(calendar.getTime());
      			calendar.add(Calendar.MINUTE, 60);// 60分钟后的时间
      			String s3=dateFormat.format(calendar.getTime());
      			calendar.add(Calendar.MINUTE, 60);// 60分钟后的时间
      			String s4=dateFormat.format(calendar.getTime());
      			calendar.add(Calendar.MINUTE, 60);// 60分钟后的时间
      			String s5=dateFormat.format(calendar.getTime());
             
				Date time1=dateFormat.parse(s1);
				Date time2=dateFormat.parse(s2);
				Date time3=dateFormat.parse(s3);
				Date time4=dateFormat.parse(s4);
				Date time5=dateFormat.parse(s5);
				String dateTemp=dateFormat.format(date);
				System.out.println(time1);
				System.out.println(time2);
				System.out.println(time3);
				System.out.println(time4);
				System.out.println(time5);
				Date now=dateFormat.parse(dateTemp);
				if(now.before(time2)&&now.after(time1))
	            	flag=1;
				if(now.before(time3)&&now.after(time2))
	            	flag=2;
				if(now.before(time4)&&now.after(time3))
	            	flag=3;
				if(now.before(time5)&&now.after(time4))
	            	flag=4;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	  System.out.println("這是函數內的flag"+flag);
         return flag;
    }
    public static String getNetworkTime() {
        try {
        	String webUrl1="http://www.baidu.com";//百度时间
            URL url=new URL(webUrl1);
            URLConnection conn=url.openConnection();
            conn.connect();
            long dateL=conn.getDate();
            Date date=new Date(dateL);
            SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
            return dateFormat.format(date);
        }catch (MalformedURLException e) {
            e.printStackTrace();
        }catch (IOException e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return "";
    }
}