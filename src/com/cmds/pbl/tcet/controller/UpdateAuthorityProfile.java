package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmds.pbl.tcet.dao.updateAuthorityDao;
import com.cmds.pbl.tcet.model.updateAuthorityModel;
@WebServlet("/updateProfile")
public class UpdateAuthorityProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateAuthorityProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/updateProfile.jsp");
		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("authority_id"));
		String username = request.getParameter("authority_name");
		String city = request.getParameter("authority_city");
		String email = request.getParameter("authority_email");
		String mob_no = request.getParameter("authority_mob_no");
		String password = request.getParameter("authority_password");
        PrintWriter out = response.getWriter();
        updateAuthorityModel update = new updateAuthorityModel();
        updateAuthorityDao updateDao = new updateAuthorityDao();
		
        update.setUsername(username);
        update.setCity(city);
        update.setEmail(email);
        update.setMob_no(mob_no);
        update.setPassword(password);
		
		
		try{
			updateDao.updateAuthority(update,id);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

	        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

	        out.println("<script>");

	        out.println("$(document).ready(function(){");

	        out.println("swal ( 'Update Success' ,  'Details Updated Successfully' ,  'success')");

	        out.println("});");

	        out.println("</script>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/authorityAfterLogin.jsp");
			
			dispatcher.include(request, response);
	  
		
	}

}


