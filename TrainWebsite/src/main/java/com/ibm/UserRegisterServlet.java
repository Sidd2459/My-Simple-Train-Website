package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserRegisterServlet extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String f=request.getParameter("fname");
		String l=request.getParameter("lname");
		String u=request.getParameter("uname");
		String m=request.getParameter("mob");
		String e=request.getParameter("email");
		String p=request.getParameter("pwd");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			PreparedStatement pstmt=conn.prepareStatement("INSERT INTO PASSDETAILS VALUES(?,?,?,?,?,?)");
			pstmt.setString(1,f);
			pstmt.setString(2,l);
			pstmt.setString(3,u);
			pstmt.setString(4,m);
			pstmt.setString(5,e);
			pstmt.setString(6,p);
			pstmt.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("UserRegisterDone.html");
			rd.forward(request, response);
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
