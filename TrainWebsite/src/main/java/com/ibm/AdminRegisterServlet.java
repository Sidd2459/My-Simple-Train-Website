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


public class AdminRegisterServlet extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String u=request.getParameter("uname");
		String p=request.getParameter("pwd");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			PreparedStatement pstmt=conn.prepareStatement("INSERT INTO ADMREG VALUES(?,?)");
			pstmt.setString(1,u);
			pstmt.setString(2,p);
			pstmt.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("AdminRegisterDone.html");
			rd.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
