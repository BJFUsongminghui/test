package com.fenliu.utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fenliu.domain.Student;
import com.mysql.jdbc.Statement;

public class GetStudentUtils {
	public static Student getStudent(Statement statement,String username) {
		Student student = null;
		try {

			String sql1 = "select * from student where Stu_number=" +username;
			ResultSet rSet;
			rSet = statement.executeQuery(sql1);
			if (rSet.next()) {
				System.out.println("创建对象！");
				student = new Student();
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

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student;
	}
}
