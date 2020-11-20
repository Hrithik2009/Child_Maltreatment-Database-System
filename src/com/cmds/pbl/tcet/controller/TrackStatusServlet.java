package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/track")
public class TrackStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TrackStatusServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/TrackComplaint.jsp");
		
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/trackResult.jsp");
		
		//dispatcher.forward(request, response);
		int complaint_id  = Integer.parseInt(request.getParameter("complaint_id"));
		int result = 0;
		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //Loading the Driver
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		}  
		try {
			
			//Getting connection to database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
			Statement st = con.createStatement();
			//st variable will be used for executing queries
			String sql = "select complaint_id,username,city,abuse_type from lodge_complaint where complaint_id ="+complaint_id;
			// sql variable  contains the sql query
	        ResultSet rs = st.executeQuery(sql);
			//Contains result of the executed query
	        while(rs.next()){
		    if(complaint_id == rs.getInt("complaint_id")){
		    	result = 1;
		    }
	     }
	
	}catch (Exception e){
	System.out.print(e);
	e.printStackTrace();
	
	
	}
	if(result == 1) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/trackResult.jsp");
		
		dispatcher.forward(request, response);
	}
	else {
		  out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

	        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

	        out.println("<script>");

	        out.println("$(document).ready(function(){");

	        out.println("swal ( 'Wrong Complaint id' , 'Enter correct complaint id' ,  'error')");

	        out.println("});");

	        out.println("</script>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/TrackComplaint.jsp");
			
			dispatcher.include(request, response);
	}

	}}
