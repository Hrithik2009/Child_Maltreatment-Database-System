package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmds.pbl.tcet.dao.AddAuthorityDao;
import com.cmds.pbl.tcet.dao.lodgeComplaintDao;
import com.cmds.pbl.tcet.model.addAuthorityModel;
import com.cmds.pbl.tcet.model.lodgecomplaint;

@WebServlet("/addAuthority")
public class AddAuthorityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddAuthorityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/addAuthority.jsp");
			
			dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String authority_name = request.getParameter("authority_name");
		String authority_city = request.getParameter("authority_city");
		String authority_email = request.getParameter("authority_email");
		String authority_mob_no = request.getParameter("authority_mob_no");
		String authority_password = request.getParameter("authority_password");
		PrintWriter out = response.getWriter();
		
        addAuthorityModel add = new addAuthorityModel();
        AddAuthorityDao addDao = new AddAuthorityDao();
		
		add.setAuthority_name(authority_name);
		add.setAuthority_city(authority_city);
		add.setAuthority_email(authority_email);
		add.setAuthority_mob_no(authority_mob_no);
		add.setAuthority_password(authority_password);
		
		
		try{
			addDao.addAuthority(add);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		   out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

	        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

	        out.println("<script>");

	        out.println("$(document).ready(function(){");

	        out.println("swal ( 'Added Successfully' ,  'Authority added successfully' ,  'success')");

	        out.println("});");

	        out.println("</script>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/AdminAfterLogin.jsp");
			
			dispatcher.include(request, response);
	
		
		
		
	}

}
