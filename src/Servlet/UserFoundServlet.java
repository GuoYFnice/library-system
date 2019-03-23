package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.db;
import model.book;

public class UserFoundServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
				request.setCharacterEncoding("gb2312");
				response.setContentType("gb2312");
				String name = request.getParameter("name");
				db db = new db();
				book book = new book();
				book = db.findBook(name);
				request.setAttribute( "book",book); 
				if(book!=null){
					request.getRequestDispatcher("./found-user.jsp").forward(request, response);
				}
			}
		
				public void doPost(HttpServletRequest request,HttpServletResponse response)
					throws ServletException,IOException{
					doGet(request, response);
				}
}