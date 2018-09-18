package com.fenliu.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.fenliu.domain.Student;
import com.fenliu.utils.GetStudentUtils;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class GetBeginTimeDao {

	public String getBeginTime( ) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		try {
			String s=null;
			Connection connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true",
					"root", "root");
			String sql="select * from begintime";
			Statement statement=(Statement) connection.createStatement();
			ResultSet rSet=statement.executeQuery(sql);
			if(rSet.next())
			{
				System.out.println("创建对象！");
				s=rSet.getString(1);
				System.out.println(s+"是什么");
				
			}
			
			statement.close();
			connection.close();
			return s;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");
			return null;

		}
		
		
	}	
	
}

