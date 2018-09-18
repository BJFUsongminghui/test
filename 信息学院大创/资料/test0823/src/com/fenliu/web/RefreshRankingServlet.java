package com.fenliu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.domain.Student;
import com.fenliu.service.UpdateMessage;

/**
 * Servlet implementation class RefreshRankingServlet
 */
public class RefreshRankingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefreshRankingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		String username = (String) session.getAttribute("username");
		UpdateMessage updatemajor = new UpdateMessage();
		List<Student> studentlist1 = updatemajor.getStudentListMajor1("计算机科学与技术");
		List<Student> studentlist2 = updatemajor.getStudentListMajor1("数字媒体技术");
		List<Student> studentlist3 = updatemajor.getStudentListMajor1("网络工程");
		List<Student> studentlist4 = updatemajor.getStudentListMajor1("物联网方向");
		if(studentlist1!=null&&!studentlist1.isEmpty())
		{
			for (int i = 0; i < studentlist1.size(); i++) {
				if (studentlist1.get(i).getStu_number().equals(username))
					session.setAttribute("studentrank", "" + (i + 1));
			}
		}
		if(studentlist4!=null&&!studentlist4.isEmpty())
		{
			for (int i = 0; i < studentlist4.size(); i++) {
				if (studentlist4.get(i).getStu_number().equals(username))
					session.setAttribute("studentrank", "" + (i + 1));
			}
		}
		if(studentlist3!=null&&!studentlist3.isEmpty())
		{
			for (int i = 0; i < studentlist3.size(); i++) {
				if (studentlist3.get(i).getStu_number().equals(username))
					session.setAttribute("studentrank", "" + (i + 1));
			}
		}
		if(studentlist2!=null&&!studentlist2.isEmpty())
		{
			for (int i = 0; i < studentlist2.size(); i++) {
				if (studentlist2.get(i).getStu_number().equals(username))
					session.setAttribute("studentrank", "" + (i + 1));
			}
		}
		System.out.println(username+"           "+session.getAttribute("studentrank"));
		response.sendRedirect(request.getContextPath() + "/Refresh_ranking.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
