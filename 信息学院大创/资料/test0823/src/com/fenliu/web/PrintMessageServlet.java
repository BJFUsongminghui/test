package com.fenliu.web;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;

import com.fenliu.domain.Student;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

/**
 * Servlet implementation class PrintMessageServlet
 */
public class PrintMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PrintMessageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Student student = (Student) session.getAttribute("student");
		Configuration cfg = new Configuration();
		try {
			// System.out.println(dir);
			FileSystemView fsv = FileSystemView.getFileSystemView();
			// 将桌面的那个文件目录赋值给file
			File file = fsv.getHomeDirectory();
			// 输出桌面那个目录的路径
			String dir = file.getPath();
			System.out.println(dir);
			cfg.setClassForTemplateLoading(this.getClass(), "/template");
			Template template = cfg.getTemplate("test.ftl"); // framemaker.ftl为要装载的模板
			// 设置对象包装器
			cfg.setObjectWrapper(new DefaultObjectWrapper());
			// 设置异常处理器
			cfg.setTemplateExceptionHandler(TemplateExceptionHandler.IGNORE_HANDLER);
			// 定义数据模型
			Map<String, String> root = new HashMap<String, String>();
			root.put("Name", student.getStu_name());
			root.put("number", student.getStu_number());
			root.put("birthday", student.getStu_birthday());
			root.put("birthplace", student.getStu_birthplace());
			root.put("sex", student.getStu_sex());
			root.put("nation", student.getStu_nation());
			root.put("score", "" + student.getStu_score());
			root.put("failnum", student.getStu_failnum());
			root.put("phone", student.getStu_phone());
			root.put("email", student.getStu_email());
			root.put("major1", student.getStu_major1());
			root.put("major2", student.getStu_major2());
			root.put("major3", student.getStu_major3());
			root.put("major4", student.getStu_major4());
			// 通过freemarker解释模板，首先需要获得Template对象
			// Template template = cfg.getTemplate("test.ftl");
			// 定义模板解释完成之后的输出
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(dir + "/out.doc")));
			try {
				// 解释模板
				template.process(root, out);
			} catch (TemplateException e) {
				e.printStackTrace();
			}
			out.close();
			PrintWriter out1 = response.getWriter();
			out1.println("<html>");// 输出的内容要放在body中
			out1.println("<body><h1>");
			out1.println("Download success!");
			out1.println("</h1></body>");
			out1.println("</html>");

		} catch (IOException e) {
			e.printStackTrace();
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
