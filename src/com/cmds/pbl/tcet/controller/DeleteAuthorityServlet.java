package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deleteAuthority")
public class DeleteAuthorityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteAuthorityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/deleteAuthority.jsp");
		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String authority_name = request.getParameter("authority_name");
		int id = Integer.parseInt(request.getParameter("authority_id"));
		String delete = "delete from authority_info where authority_id ="+id;
		PrintWriter out = response.getWriter();		


try {
	Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e1) {
	
	e1.printStackTrace();
}
int result = 0;
try{
	
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root","");

PreparedStatement preparedStatement = connection.prepareStatement(delete);


 result = preparedStatement.executeUpdate();

}catch(SQLException e){

e.printStackTrace();

}

if(result != 0) {
	
	 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

     out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

     out.println("<script>");

     out.println("$(document).ready(function(){");

     out.println("swal ( 'Deleted Successfully' ,  'Authority details Deleted' ,  'success')");

     out.println("});");

     out.println("</script>");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/viewAuthority.jsp");
		
	    dispatcher.include(request, response);
	
	
}
}}


