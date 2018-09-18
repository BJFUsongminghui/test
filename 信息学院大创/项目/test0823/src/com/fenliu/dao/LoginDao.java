package com.fenliu.dao;

import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fenliu.domain.Student;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class LoginDao {
	public Student login(String username,String password) {
		Student student=null;
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
			String sql="select * from student where Stu_number="+username+" and Stu_password="+password;
			Statement statement=(Statement) connection.createStatement();
			ResultSet rSet=statement.executeQuery(sql);
			if(rSet.next())
			{
				System.out.println("创建对象！");
				student=new Student();
				student.setStu_number(rSet.getString(2));
				student.setStu_name(rSet.getString(4));
				student.setStu_score(rSet.getDouble(5));
				student.setStu_rank(rSet.getLong(6));
				student.setIschoose(rSet.getLong(7));
				student.setStu_failnum(rSet.getString(8));
				student.setStu_sex(rSet.getString(9));
				student.setStu_nation(rSet.getString(10));
				student.setStu_phone(rSet.getString(11));
				student.setStu_email(rSet.getString(12));
				student.setStu_birthplace(rSet.getString(13));
				student.setStu_major(rSet.getString(14));
				student.setStu_major1(rSet.getString(15));
				student.setStu_major2(rSet.getString(16));
				student.setStu_major3(rSet.getString(17));
				student.setStu_major4(rSet.getString(18));
				student.setStu_birthday(rSet.getString(19));
				
			}
			statement.close();
			connection.close();
			return student;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");
		}
		
		return null;
		
	}
}
