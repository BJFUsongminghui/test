package com.fenliu.service;

import java.util.LinkedList;
import java.util.List;

import com.fenliu.dao.UpdateDao;
import com.fenliu.domain.Student;

public class UpdateMessage {

	public Student updateStudent(Student student) {
		// TODO Auto-generated method stub
		UpdateDao update=new UpdateDao();
		return update.updateStudent(student);
	}

	public Student updateMajor(String[] major,String username) {
		// TODO Auto-generated method stub
		UpdateDao update=new UpdateDao();
		return update.updateMajor(major,username);
	}

	public List<Student> getStudentListMajor1(String major) {
		// TODO Auto-generated method stub
		UpdateDao update=new UpdateDao();
		List<Student> students= update.getStudentListMajor1(major);
		List<Student> studentlist=new LinkedList<Student>();
		for(int i=0;i<students.size();i++)
		{
			System.out.println(students.get(i).getStu_major1()+ "    "+major );
			if(students.get(i).getStu_major1()!=null&&students.get(i).getStu_major1().equals(major))
				studentlist.add(students.get(i));
		}
		return studentlist;
	}

}
