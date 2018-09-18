package com.fenliu.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.domain.Student;
import com.fenliu.service.UpdateMessage;

public class WriteMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	WriteMessageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		Student student1;
		Student student = new Student();
		String birthplace = request.getParameter("birthplace");
		String birthday_year = request.getParameter("year");
		String birthday_month = request.getParameter("month");
		String birthday_day = request.getParameter("day");
		String birthday = birthday_year + "-" + birthday_month + "-" + birthday_day;
		String nation = request.getParameter("nation");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String failnum = request.getParameter("num");
		String sex = request.getParameter("gender");
		String username = request.getParameter("username");

		System.out.println(birthday);
		student.setStu_birthday(birthday);
		student.setStu_birthplace(birthplace);
		student.setStu_nation(nation);
		student.setStu_phone(phone);
		student.setStu_email(email);
		student.setStu_failnum(failnum);
		student.setStu_sex(sex);
		student.setStu_number(username);
		System.out.println(failnum);

		UpdateMessage update = new UpdateMessage();
		student1 = update.updateStudent(student);
		if (student1 == null) {
			request.getRequestDispatcher("/WriteMessage.jsp").forward(request, response);
		} else {
			System.out.println("dengluchenggong");
			request.setAttribute("student", student1);
			session.setAttribute("student", student1);
			System.out.println("name=" + student1.getStu_name());
			request.getRequestDispatcher("/Homepage.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
