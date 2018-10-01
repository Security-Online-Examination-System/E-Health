//package com;

import javax.servlet.*;
import java.sql.*;
import java.io.*;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.ConnectionFactory;
//import com.CheckSession;


public class UserReg extends HttpServlet 
	{
	private static final long serialVersionUID = 1L;
    RequestDispatcher rd;
	Connection con=null;
	Statement  st=null; 
	ResultSet rs=null;
	PreparedStatement ps;
	PrintWriter pw;
	
    public void init(ServletConfig config) throws ServletException 
		{
		
			
	}

	
	public void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException

		{
           
           
		    pw=response.getWriter();
		 Connection con=ConnectionFactory.createConnection();
		 //pw.println(con);





		 int id=Integer.parseInt(request.getParameter("id"));
		 String fn=request.getParameter("fn");
		 String ln=request.getParameter("ln");
		 int age=Integer.parseInt(request.getParameter("age"));
		 String gen=request.getParameter("gen");
		 String add=request.getParameter("add");
		 String name=request.getParameter("name");
		 //System.out.println("name======="+uname);
		 String password=request.getParameter("password");

		 System.out.println("password======="+password);

		 String s1=request.getParameter("Submit");
		if(s1.equals("Submit"))
			{
		String query="insert into USER_INFO values(?,?,?,?,?,?,?,?)";
		
		  try
			   {
			   
				ps=con.prepareStatement(query);


                  ps.setInt(1, id);         
		          ps.setString(2, fn);
				  ps.setString(3, ln);
				  ps.setInt(4, age);
				  ps.setString(5, gen);
				  ps.setString(6, add);
				  ps.setString(7, name);
				  ps.setString(8, password);
				 


               int rs=ps.executeUpdate();

                 if(rs==1)
					   {

                   pw.println("<body background='images/img91.jpg'>");
					  pw.println("<font color='green'><h1>Registered Successfully........</h1></font>");
         //RequestDispatcher rd = request.getRequestDispatcher("./usuccess.jsp");
          //rd.forward(request, response);
					
					/* rd=request.getRequestDispatcher("usuccess.jsp");
			        System.out.println("password==================1");
					 rd.forward(request,response);
					  System.out.println("password==================2");*/
					    }	



				/*if(rs.next())

				   {
					
                    String usname=rs.getString("usname");
					
                   

					HttpSession session=request.getSession(true);
                    session.setAttribute("userID",userID);
					session.setAttribute("usname",usname);
					session.setAttribute("userType",userType);

					
					
					
				else
					{
				 rd=request.getRequestDispatcher("Errorpage.jsp");
			      rd.forward(request,response);
				  }
					
					
			       }*/
				    else{
						pw.println("<font color='red'><h1>Registered fail........</h1></font>");
						System.out.println("password==================3");
				   /*rd=request.getRequestDispatcher("failure.jsp");
			      System.out.println("password==================4");
				   rd.forward(request,response);*/
				  
				   }
				   
			
			
		
			}
			catch(Exception sqle)
				{
				System.out.println("password==================5");
				//pw.println(sqle);
			}
			
			}
		}
			public void destroy()
		     {
		    try
		       {
				System.out.println("password==================6");
			con.close();
			    }
		 catch(Exception e)
			{
			System.out.println("password==================7");
		}
  }
	}
