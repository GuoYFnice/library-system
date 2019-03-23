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
import model.book;

public class ALLbookServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		db db = new db();
		List<Map> list =new ArrayList<Map>();
		list = db.Allbook();
		request.setAttribute( "book",list); 
        request.getRequestDispatcher("./index.jsp").forward(request,response);
		
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
			doGet(request, response);
		}
}