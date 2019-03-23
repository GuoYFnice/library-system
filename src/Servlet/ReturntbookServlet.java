package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.db;

public class ReturntbookServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
				request.setCharacterEncoding("gb2312");
				response.setContentType("gb2312");
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				String writer = request.getParameter("writer");
				db db = new db();
				int a = db.returnBook(name);
				db.joinBook(id, name, writer);
					response.sendRedirect("./userSelectServlet");
				
			}
		
				public void doPost(HttpServletRequest request,HttpServletResponse response)
					throws ServletException,IOException{
					doGet(request, response);
				}
}
