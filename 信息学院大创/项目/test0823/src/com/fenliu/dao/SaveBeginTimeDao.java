package com.fenliu.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.fenliu.utils.GetStudentUtils;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class SaveBeginTimeDao {

	public void save(String begintime) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		try {
			Connection connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true",
					"root", "root");
			 	String sql  = "update beginTime set Tea_begintime=?";
		        PreparedStatement sta = (PreparedStatement) connection.prepareStatement(sql);
		        sta.setString(1,begintime);
		        sta.executeUpdate();
		        sta.close();
			connection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");

		}

		
	}	
	
}


