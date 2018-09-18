package com.fenliu.web;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.domain.Student;
import com.fenliu.service.UpdateMessage;

/**
 * Servlet implementation class TeacherChooseToMeetingServlet
 */
public class TeacherChooseToMeetingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherChooseToMeetingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String major=request.getParameter("sub");
		if(major.equals("全部"))
		{
			UpdateMessage updatemajor = new UpdateMessage();
			List<Student> studentlist1 = updatemajor.getStudentListMajor1("计算机科学与技术");
			List<Student> studentlist2 = updatemajor.getStudentListMajor1("数字媒体技术");
			List<Student> studentlist3 = updatemajor.getStudentListMajor1("网络工程");
			List<Student> studentlist4 = updatemajor.getStudentListMajor1("物联网方向");
			List<Student> studentlist=new LinkedList<Student>();
			studentlist.addAll(studentlist1);
			studentlist.addAll(studentlist2);
			studentlist.addAll(studentlist3);
			studentlist.addAll(studentlist4);
			session.setAttribute("studentlist", studentlist);
		}
		else
		{
			UpdateMessage updatemajor = new UpdateMessage();
			List<Student> studentlist = updatemajor.getStudentListMajor1(major);
			session.setAttribute("studentlist", studentlist);
		}
		response.sendRedirect(request.getContextPath() + "/teacher/TEA_Set_meeting.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
