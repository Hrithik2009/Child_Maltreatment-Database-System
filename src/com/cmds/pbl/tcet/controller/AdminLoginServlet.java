package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cmds.pbl.tcet.dao.AuthorityLoginDao;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AdminLogin.jsp");
			
			dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		if(username.equals("cmds") && password.equals("admin")) {
			 HttpSession session=request.getSession();  
		     session.setAttribute("username",username);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AdminAfterLogin.jsp");
			
			dispatcher.forward(request, response);
			
			
		}
		else {


	        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

	        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

	        out.println("<script>");

	        out.println("$(document).ready(function(){");

	        out.println("swal ( 'Login Error' ,  'Username or Password error' ,  'error')");

	        out.println("});");

	        out.println("</script>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AdminLogin.jsp");
			
			dispatcher.include(request, response);
			
		}
	}

}
