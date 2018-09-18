package com.fenliu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.domain.Student;
import com.fenliu.domain.Teacher;
import com.fenliu.service.LoginService;
import com.fenliu.service.TeacherLoginService;
import com.fenliu.service.UpdateMessage;
import com.fenliu.utils.GetMax;

/**
 * Servlet implementation class TeacherLoginServlet
 */
public class TeacherLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TeacherLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获得参数
		request.setCharacterEncoding("UTF-8");
		Teacher teacher;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String newcode = request.getParameter("code");
		// 获得验证码
		HttpSession session = request.getSession();
		String code = (String) session.getAttribute("code");

		if (newcode.equalsIgnoreCase(code)) {
			System.out.println(username + "   " + password);
			TeacherLoginService loginService = new TeacherLoginService();
			teacher = loginService.login(username, password);
			if (teacher == null) {
				System.out.println("老师登录失败");
				request.setAttribute("message", "用户名或密码错误");
				request.getRequestDispatcher("/teacher/TEA_Entry.jsp").forward(request, response);
			} else {
				System.out.println("dengluchenggong");
				session.setAttribute("teacher", teacher);
				response.sendRedirect(request.getContextPath() + "/teacher/TEA_Homepage.jsp");
			}
		} else {
			request.setAttribute("message", "验证码输入有误");
			request.getRequestDispatcher("/teacher/TEA_Entry.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
