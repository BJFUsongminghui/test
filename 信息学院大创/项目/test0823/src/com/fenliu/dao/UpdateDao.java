package com.fenliu.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.fenliu.domain.Student;
import com.fenliu.utils.GetStudentUtils;
import com.mysql.jdbc.Connection;

import com.mysql.jdbc.Statement;

public class UpdateDao {

	public Student updateStudent(Student student) {
		Student student2 = null;
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
			System.out.println("进入选择！" + student.getStu_number());
			Statement statement = (Statement) connection.createStatement();
			String sql2 = "update student set Stu_birthplace='" + student.getStu_birthplace() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql3 = "update student set Stu_nation='" + student.getStu_nation() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql4 = "update student set Stu_phone='" + student.getStu_phone() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql5 = "update student set Stu_sex='" + student.getStu_sex() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql6 = "update student set Stu_birthday='" + student.getStu_birthday() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql7 = "update student set Stu_email='" + student.getStu_email() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			String sql8 = "update student set Stu_failnum='" + student.getStu_failnum() + "' where Stu_number='"
					+ student.getStu_number() + "'";
			statement.executeUpdate(sql2);
			statement.executeUpdate(sql3);
			statement.executeUpdate(sql4);
			statement.executeUpdate(sql5);
			statement.executeUpdate(sql6);
			statement.executeUpdate(sql7);
			statement.executeUpdate(sql8);
			student2 = GetStudentUtils.getStudent(statement,student.getStu_number());
			System.out.println("name2=" + student2.getStu_name());
			statement.close();
			connection.close();
			return student2;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败！");

		}

		return student2;
	}

	public Student updateMajor(String[] major,String username) {
		Student student = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		Connection connection;
		try {
			connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true",
					"root", "root");
			Statement statement = (Statement) connection.createStatement();
			for(int i=0;i<major.length;i++)
			{
				String stu_major="Stu_major";
				String Stu_major=stu_major+(i+1);
				String sql = "update student set "+Stu_major+"='" + major[i] + "' where Stu_number='"
						+ username + "'";
				statement.executeUpdate(sql);
			}
			student=GetStudentUtils.getStudent(statement,username);
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student;
	}

	public List<Student> getStudentListMajor1(String major) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("数据库驱动失败！");
		}
		Connection connection;
		try {
			connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true",
					"root", "root");
			Statement statement = (Statement) connection.createStatement();
			System.out.println("major为                   '"+major+"'");
				//String sql = "seclet * from student where Stu_major1='"+ major +"'";
			String sql = "select * from student";
				ResultSet rSet=statement.executeQuery(sql);
				
//				String sql1 = "select * from student where Stu_number=" +username;
//				ResultSet rSet;
//				rSet = statement.executeQuery(sql1);
				
				
				System.out.println("major为                   '"+major+"'");
			List<Student> studentlist=new LinkedList<Student>();
			while(rSet.next())
			{
				System.out.println("有  对  象！");
				Student student = new Student();
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
				studentlist.add(student);
			}
			statement.close();
			connection.close();
			return studentlist;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	public List<Student> getStudentListMajor2() {
		// TODO Auto-generated method stub
		return null;
	}
	public List<Student> getStudentListMajor3() {
		// TODO Auto-generated method stub
		return null;
	}
	public List<Student> getStudentListMajor4() {
		// TODO Auto-generated method stub
		return null;
	}

}
