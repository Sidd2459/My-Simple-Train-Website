package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserLoginValidationServlet extends HttpServlet {
	

	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String u=request.getParameter("uname1");
		String p=request.getParameter("pwd1");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT UNAME,PWD FROM PASSDETAILS");
			while(rs.next()) {
				if(u.equals(rs.getString("UNAME"))) {
					if(p.equals(rs.getString("PWD"))) {
						RequestDispatcher rd=request.getRequestDispatcher("Search.html");
						rd.forward(request, response);
					}
					else {
						/*
						 * pw.
						 * println("<span class='login100-form-title p-b-37'><h3><font color='red'>You Have Entered Incorrect User Password!!! Please Retry Again....</font></h3></span>"
						 * ); RequestDispatcher rd1=request.getRequestDispatcher("UserLogin.jsp");
						 * rd1.forward(request, response); rd1.include(request, response);
						 */
						
						  request.setAttribute("error","*Invalid Username or Password Provided!"); 
						  RequestDispatcher rd1=request.getRequestDispatcher("UserLogin.jsp");
						  rd1.forward(request, response);
						  rd1.include(request, response);
						  
						 
					}
				}else {
					/*
					 * pw.
					 * println("<h3><font color='red'>You Have Entered Incorrect User Name!!! Please Retry Again....</font></h3>"
					 * ); RequestDispatcher rd2=request.getRequestDispatcher("UserLogin.jsp");
					 * rd2.forward(request, response); rd2.include(request, response);
					 */
					  continue;
						/*
						 * request.setAttribute("error","**Invalid Username or Password Provided!");
						 * RequestDispatcher rd2=request.getRequestDispatcher("UserLogin.jsp");
						 * rd2.forward(request, response); rd2.include(request, response);
						 */
					  
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
