package Servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import db.db;
import model.User;
import model.book;

public class MainServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException{
			request.setCharacterEncoding("gb2312");
			response.setContentType("gb2312");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			db db = new db();
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			User user =new User();
			user = db.checkUser(username, password);
			if(user == null){
				response.sendRedirect("./loginer.jsp");
			}
			else if(user!=null){
				List bookset=new ArrayList();
				bookset = db.Allbook();
				request.setAttribute( "book",bookset);
				request.getRequestDispatcher("./index-user.jsp").forward(request, response);
			}
		}
	
			public void doPost(HttpServletRequest request,HttpServletResponse response)
				throws ServletException,IOException{
				doGet(request, response);
			}
	}

