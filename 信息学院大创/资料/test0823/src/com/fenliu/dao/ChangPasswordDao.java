package com.fenliu.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.fenliu.domain.Student;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ChangPasswordDao {

	public Student chang(String username, String newpassword) {
		// TODO Auto-generated method stub
		Student student2=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		try {
			
			Connection connection=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true","root","root");
			Statement statement= (Statement) connection.createStatement();
			String sql2="update student set Stu_password='"+newpassword+"' where Stu_number='"+username+"'";
			statement.executeUpdate(sql2);
			String sql1="select * from student where Stu_number="+username;
			ResultSet rSet=statement.executeQuery(sql1);
			if(rSet.next())
			{
				System.out.println("创建对象！");
				student2=new Student();
				student2.setStu_number(rSet.getString(2));
				student2.setStu_name(rSet.getString(4));
				student2.setStu_score(rSet.getDouble(5));
				student2.setStu_rank(rSet.getLong(6));
				student2.setIschoose(rSet.getLong(7));
				student2.setStu_failnum(rSet.getString(8));
				student2.setStu_sex(rSet.getString(9));
				student2.setStu_nation(rSet.getString(10));
				student2.setStu_phone(rSet.getString(11));
				student2.setStu_email(rSet.getString(12));
				student2.setStu_birthplace(rSet.getString(13));
				student2.setStu_major(rSet.getString(14));
				student2.setStu_major1(rSet.getString(15));
				student2.setStu_major2(rSet.getString(16));
				student2.setStu_major3(rSet.getString(17));
				student2.setStu_major4(rSet.getString(18));
				student2.setStu_birthday(rSet.getString(19));
				
			}
			System.out.println("name2="+student2.getStu_name());
			statement.close();
			connection.close();
			if(student2!=null)
				student2.setStu_password(newpassword);
			return student2;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");
			
		}
		return student2;
	}

}
