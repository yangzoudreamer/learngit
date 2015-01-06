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

public class ModifyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ModifyServlet() {
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
		
		String path_successed = "modify.jsp";
		String path_failed ="Login_demo.jsp";
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		List<String> info = new ArrayList<String>();
		
		if (info.size() == 0) {
			
			User user = new User();
			user.setUserid(userid);
			user.setPassword(password);
			
			try {
				if (DAOFactory.getIUserDAOInstance().findLogin(user)) {
					request.setAttribute("info_page", info);
					request.setAttribute("user", user);
					request.getRequestDispatcher(path_successed).forward(request, response);
				}
				else {
					info.add("用户登录失败，错误的用户名或密码");
					request.setAttribute("info_page", info);
					request.getRequestDispatcher(path_failed).forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
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
