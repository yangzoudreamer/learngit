package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAOFactory;
import VO.User;

public class CheckGrade extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CheckGrade() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");

		String path_successed = "grade.jsp";
		String path_failed ="Login_demo.jsp";
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		List<String> info = new ArrayList<String>();
		
//		if (userid == null || "".equals(userid)) {
//			info.add("用户id不能为空");
//		}
//		if (password == null || "".equals(password)) {
//			info.add("密码不能为空");
//		}
		if (info.size() == 0) {
			
			User user = new User();
			user.setUserid(userid);
			user.setPassword(password);
			
//			System.out.println(user.toString());
			
			try {
				if (DAOFactory.getIUserDAOInstance().findGrade(user)) {
					info.add("用户登录成功！");
					request.setAttribute("info_page", info);
					request.setAttribute("user", user);
//					request.setAttribute("username", user.getName());
//					System.out.println(user.getName());
//					request.setAttribute("username", user.getName());
					request.getRequestDispatcher(path_successed).forward(request, response);
//					info.add("用户登录成功,用户名： " + user.getName()); 
				}
				else {
					info.add("此用户无成绩可查，请重新登录！");
					request.setAttribute("info_page", info);
					request.getRequestDispatcher(path_failed).forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
//			request.setAttribute("info_page", info);
//			request.getRequestDispatcher(path_failed).forward(request, response);
		}
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
