package Servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import db.db;
import model.User;

public class joinservlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
				request.setCharacterEncoding("gb2312");
				response.setContentType("gb2312");
				String username = request.getParameter("regname");
				String password = request.getParameter("regpassword");
				db db = new db();
				int a = db.joinUser(username, password);
				
				if(a!=0){
					response.sendRedirect("./regsc.jsp");
				}else{
					response.sendRedirect("./reger.jsp");
				}
			}
		
				public void doPost(HttpServletRequest request,HttpServletResponse response)
					throws ServletException,IOException{
					doGet(request, response);
				}
}
