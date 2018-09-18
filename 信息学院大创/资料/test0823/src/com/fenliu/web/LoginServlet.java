package com.fenliu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenliu.dao.GetBeginTimeDao;
import com.fenliu.domain.Student;
import com.fenliu.service.LoginService;
import com.fenliu.service.UpdateMessage;
import com.fenliu.utils.GetMax;
import com.fenliu.utils.TimeUtil;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得参数
		Student student;
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String newcode=request.getParameter("code");
		
		//获得验证码
		HttpSession session=request.getSession();
		String code=(String) session.getAttribute("code");
		String currentTime=TimeUtil.getNetworkTime();
		//将网络时间放入域中，防止修改系统时间
		System.out.println(currentTime);
		session.setAttribute("currentTime", currentTime);
		int timeFlag=TimeUtil.gettimeFlag();
		session.setAttribute("timeFlag", timeFlag);
		System.out.println(timeFlag);
		GetBeginTimeDao begintime=new GetBeginTimeDao();
		String s=begintime.getBeginTime();
		session.setAttribute("begintime", s);
		
		
		
		if(newcode.equalsIgnoreCase(code))
		{
			System.out.println(username+"   "+password);
			LoginService loginService=new LoginService();
			student=loginService.login(username,password);
			if(student==null)
			{
				System.out.println("yonghudenglushibai");
				request.setAttribute("message", "用户名或密码错误");
				request.getRequestDispatcher("/Entry.jsp").forward(request, response);
			}
			else
			{
				System.out.println("dengluchenggong");
				session.setAttribute("student", student);
				session.setAttribute("username",username);
				UpdateMessage updatemajor = new UpdateMessage();
				if(student.getStu_major1()!=null)
				{
					List<Student> studentlist = updatemajor.getStudentListMajor1(student.getStu_major1());
					for (int i = 0; i < studentlist.size(); i++) {
						if (studentlist.get(i).getStu_number().equals(username))
							session.setAttribute("studentrank", "" + (i + 1));
					}
					
				}
					
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
				response.sendRedirect(request.getContextPath()+"/Homepage.jsp");
			}
		}
		else
		{
			request.setAttribute("message", "验证码输入有误");
			request.getRequestDispatcher("/Entry.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
