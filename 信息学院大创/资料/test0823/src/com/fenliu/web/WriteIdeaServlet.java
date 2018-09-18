package com.fenliu.web;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import com.fenliu.domain.EduDetail;
import com.fenliu.domain.Student;
import com.fenliu.service.UpdateMessage;
import com.fenliu.utils.GetMax;
import com.fenliu.utils.TimeUtil;

/**
 * Servlet implementation class WriteIdeaServlet
 */
public class WriteIdeaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WriteIdeaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public static void studentList() {
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] major = request.getParameterValues("major");
		UpdateMessage updatemajor = new UpdateMessage();
		HttpSession session = request.getSession();	
		String username = (String) session.getAttribute("username");
		Student student = updatemajor.updateMajor(major, username);
		session.setAttribute("Stu_major", major[0]);
		
		List<Student> studentlist = updatemajor.getStudentListMajor1(major[0]);
		List<Student> studentlist1 = updatemajor.getStudentListMajor1("计算机科学与技术");
		List<Student> studentlist2 = updatemajor.getStudentListMajor1("数字媒体技术");
		List<Student> studentlist3 = updatemajor.getStudentListMajor1("网络工程");
		List<Student> studentlist4 = updatemajor.getStudentListMajor1("物联网方向");
		session.setAttribute("studentlist1", studentlist1);
		session.setAttribute("studentlist2", studentlist2);
		session.setAttribute("studentlist3", studentlist3);
		session.setAttribute("studentlist4", studentlist4);	
		int list_length1=0,list_length2=0,list_length3=0,list_length4=0;
		if (studentlist1 != null )
			list_length1=studentlist1.size();
		if (studentlist2 != null )
			list_length2=studentlist2.size();
		if (studentlist3 != null )
			list_length3=studentlist3.size();
		if (studentlist4 != null )
			list_length4=studentlist4.size();
		int list_length=GetMax.max(list_length1, list_length2, list_length3, list_length4);
		List<String> numberlist=GetMax.numberList(list_length);
		session.setAttribute("listlength", numberlist);	
		if (student != null) {
			session.setAttribute("student", student);
			if (studentlist == null || studentlist.isEmpty())
				System.out.println("空空空");
			else
				for (int i = 0; i < studentlist.size(); i++) {
					if (studentlist.get(i).getStu_number().equals(username))
						session.setAttribute("studentrank", "" + (i + 1));
				}
			response.sendRedirect(request.getContextPath() + "/Refresh_ranking.jsp");
		} else {
			PrintWriter out = response.getWriter();
			out.println("<html>");// 输出的内容要放在body中
			out.println("<body>");
			out.println("woring......");
			out.println("</body>");
			out.println("</html>");
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
