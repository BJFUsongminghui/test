package com.fenliu.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.fenliu.domain.Student;
import com.fenliu.domain.Teacher;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class TeacherLoginDao {

	public Teacher login(String username, String password) {
		Teacher teacher=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		try {
		
			Connection connection=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
			System.out.println("进入选择！"+username+ " "+password);
			String sql="select * from teacher where Teacher_number='"+username+"' and Teacher_password='"+password+"'";
			Statement statement=(Statement) connection.createStatement();
			ResultSet rSet=statement.executeQuery(sql);
			if(rSet.next())
			{
				System.out.println("创建laoshi！");
				teacher=new Teacher();
				teacher.setNumber(rSet.getString(1));
			}
			statement.close();
			connection.close();
			return teacher;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");
		}
		return null;
	}

}
