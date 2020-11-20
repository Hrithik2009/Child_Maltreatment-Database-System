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
@WebServlet("/AuthorityLogin")
public class AuthorityLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AuthorityLoginServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	      RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AuthorityLogin.jsp");
			
		  dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int authority_id = Integer.parseInt(request.getParameter("authority_id"));
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		AuthorityLoginDao dao = new AuthorityLoginDao();
		PrintWriter out = response.getWriter();
		if(dao.check(email, password,authority_id)) {
			 HttpSession session1=request.getSession();  
		     session1.setAttribute("authority_id",authority_id);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/authorityAfterLogin.jsp");
			
			dispatcher.forward(request, response);
			
			
		}
		else {
			 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

		        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

		        out.println("<script>");

		        out.println("$(document).ready(function(){");

		        out.println("swal ( 'Login Error' ,  'Id,Email or Password error' ,  'error')");

		        out.println("});");

		        out.println("</script>");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AuthorityLogin.jsp");
				
				dispatcher.include(request, response);
		}
	}

}
