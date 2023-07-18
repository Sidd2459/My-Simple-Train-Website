package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLoginValidationServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String u=request.getParameter("uname1");
		String p=request.getParameter("pwd1");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT UNAME,PWD FROM ADMREG");
			while(rs.next()) {
				if(u.equals(rs.getString(1))) {
					if(p.equals(rs.getString(2))) {
						request.setAttribute("data",request.getParameter("uname1")); 
						RequestDispatcher rd=request.getRequestDispatcher("AddTrain.jsp");
						rd.forward(request, response);
					}
					else {
						  request.setAttribute("error","Invalid Username or Password Provided!"); 
						  RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
						  rd.forward(request, response);
						  rd.include(request, response);
					}
				}else {
					/*
					 * request.setAttribute("error","Invalid Username or Password Provided!");
					 * RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
					 * rd.forward(request, response); rd.include(request, response);
					 */
					continue;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
