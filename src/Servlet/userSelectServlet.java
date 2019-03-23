package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.db;

public class userSelectServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		db db = new db();
		List<Map> list =new ArrayList<Map>();
		String username = request.getParameter("username");
		list = db.Allselect(username);
		request.setAttribute("select",list); 
        request.getRequestDispatcher("./select-user.jsp").forward(request,response);
		
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
			doGet(request, response);
		}
}