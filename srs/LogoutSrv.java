//package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Logout
 */
public class LogoutSrv extends HttpServlet 
	{
	private static final long serialVersionUID = 1L;
       
    
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
	      session.invalidate();
		response.sendRedirect("index.html");
	}
}
