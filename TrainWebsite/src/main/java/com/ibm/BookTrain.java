package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.concurrent.CopyOnWriteArrayList;

import javax.crypto.spec.PSource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BookTrain extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String tno1=request.getParameter("tno1");
		String tname1=request.getParameter("tname1");
		String src1=request.getParameter("src1");
		String dest1=request.getParameter("dest1");
		String bt=request.getParameter("bookedtickets");
		String sav1=request.getParameter("sav");
		
		Driver d=new oracle.jdbc.driver.OracleDriver();
		try {
			DriverManager.registerDriver(d);
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","helloWorld","helloWorld");
			
			int bt1=Integer.parseInt(bt);
			int sav2=Integer.parseInt(sav1);
			
			
			 
			if(sav2<=0) {
				RequestDispatcher rd1=request.getRequestDispatcher("AllTicketsBooked.jsp");
				rd1.forward(request, response);
				bt1=0;
			}
			else {
				sav2=sav2-bt1;
				if(sav2<0) {
					RequestDispatcher rd2=request.getRequestDispatcher("AllTicketsBooked.jsp");
					rd2.forward(request, response);
					bt1=0;
				}
			}
			if(bt1>0) {
			PreparedStatement pstmt=conn.prepareStatement("INSERT INTO BOOKEDTRAINS VALUES(?,?,?,?,?)");
			pstmt.setString(1, tno1);
			pstmt.setString(2, tname1);
			pstmt.setString(3, src1);
			pstmt.setString(4, dest1);
			pstmt.setInt(5, bt1);
			pstmt.executeUpdate();
			
			PreparedStatement pstmt1=conn.prepareStatement("UPDATE TRAINDETAILS SET AVAILABLE=? WHERE TNO=?");
			pstmt1.setInt(1, sav2);
			pstmt1.setString(2,tno1);
			pstmt1.executeUpdate();}
			
			RequestDispatcher rd=request.getRequestDispatcher("BookingConfirmation.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
