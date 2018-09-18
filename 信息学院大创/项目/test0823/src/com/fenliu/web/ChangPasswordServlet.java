package com.fenliu.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.domain.Student;
import com.fenliu.service.ChangPasswordService;

/**
 * Servlet implementation class ChangPasswordServlet
 */
public class ChangPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		System.out.println("from session "+username);
		String newpassword=request.getParameter("newpassword");
		String yespassword=request.getParameter("yespassword");
		if(newpassword.equals(yespassword))
		{
			ChangPasswordService changpassword=new ChangPasswordService();
			Student student=changpassword.change(username,newpassword);
			if(student!=null)
				session.setAttribute("student", student);
			request.setAttribute("password_message", "修改密码成功！");
			
		}
		else {
			request.setAttribute("password_message", "请保证两个密码一致！");
		}
		request.getRequestDispatcher("/ChangePassword.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
