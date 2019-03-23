package Servlet;

import java.io.Console;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.db;

public class DelbookServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
				request.setCharacterEncoding("gb2312");
				response.setContentType("gb2312");
				String name = request.getParameter("name");
				db db = new db();
				int a = db.delBook(name);
				if(a!=0){
					response.sendRedirect("./ALLbookServlet");
				}
			}
		
				public void doPost(HttpServletRequest request,HttpServletResponse response)
					throws ServletException,IOException{
					doGet(request, response);
				}
}