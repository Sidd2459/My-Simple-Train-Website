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

public class AddTrainServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String tno=request.getParameter("tno");
		String tname=request.getParameter("tname");
		String src=request.getParameter("src");
		String des=request.getParameter("dest");
		String ava=request.getParameter("ava");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO TRAINDETAILS VALUES (?,?,?,?,?)");
			pstmt.setString(1,tno);
			pstmt.setString(2,tname);
			pstmt.setString(3,src);
			pstmt.setString(4,des);
			pstmt.setString(5,ava);
			pstmt.executeUpdate();
			
			RequestDispatcher rd=request.getRequestDispatcher("AddAnotherTrain.html");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
